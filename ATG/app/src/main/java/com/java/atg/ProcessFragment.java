package com.java.atg;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import java.io.IOException;
import java.util.List;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link ProcessFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class ProcessFragment extends Fragment {

    public ProcessFragment() {
        // Required empty public constructor
    }

    public static ProcessFragment newInstance() {
        ProcessFragment fragment = new ProcessFragment();
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    public void OnAttach(Long pid) {
        /*
         * if is attached to some process previously
         * deattach first
         * */
        try {
            if (ATG.GetAce().IsAttached())
                ATG.GetAce().DeAttach();
        } catch (InterruptedException e) {
            DialogUtil.ShowError(getContext(), e.getMessage());
            return;

        }
        // then we can attach
        try {
            ATG.GetAce().Attach(pid);
        } catch (IOException e) {
            DialogUtil.ShowError(getContext(), e.getMessage());
        }

        // just to make sure if we are attached to the correct process
        if (ATG.GetAce().GetAttachedPid().equals(pid))
            DialogUtil.ShowInfo(getContext(), "Attach is successful ");
        else
            DialogUtil.ShowError(getContext(), "Unknown error when attaching, attached to wrong process");
    }

    private void OnRowClicked(Long pid, String procName) {
        new AlertDialog.Builder(this.getContext())
                .setTitle("Attaching")
                .setMessage(String.format("Attach to %d (%s)?", pid, procName))
                // Specifying a listener allows you to take an action before dismissing the dialog.
                // The dialog is automatically dismissed when a dialog button is clicked.
                .setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        OnAttach(pid);
                    }
                })

                // A null listener allows the button to dismiss the dialog and take no further action.
                .setNegativeButton(android.R.string.no, null)
                .setIcon(R.drawable.ic_question_mark)
                .show();
    }

    /**
     * Make Row View representation from [ProcInfo]
     */
    private TableRow ProcInfoToTableRow(LayoutInflater inflater, ProcInfo procInfo, int apkIndex) {

        TableRow rowView = (TableRow) inflater.inflate(R.layout.process_table_row, null);
        // =========== setup row ===========
        int rowItemCount = 3;
        assert (rowItemCount == rowView.getChildCount());
        // set number
        TextView orderNumView = (TextView) rowView.getChildAt(0);
        orderNumView.setText(String.format("%d.", apkIndex + 1));
        // set Pid
        TextView pidView = (TextView) rowView.getChildAt(1);
        Long pid = Long.parseLong(procInfo.GetPidStr());
        pidView.setText(pid.toString());
        // set ApkName
        TextView apkNameView = (TextView) rowView.getChildAt(2);
        apkNameView.setMovementMethod(new ScrollingMovementMethod());
        apkNameView.setText(procInfo.GetName());
        // =================================
        rowView.setOnClickListener(

                new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        OnRowClicked(pid, procInfo.GetName());
                    }
                }

        );
        return rowView;
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View mainView = inflater.inflate(R.layout.fragment_process, container, false);
        TableLayout procTable = mainView.findViewById(R.id.ProcessTable);

        List<ProcInfo> runningProcs = ATG.GetAce().ListRunningProc();
        for (int i = 0; i < runningProcs.size(); i++) {
            TableRow rowView = ProcInfoToTableRow(inflater, runningProcs.get(i), i);
            procTable.addView(rowView);
        }
        return mainView;
    }
}