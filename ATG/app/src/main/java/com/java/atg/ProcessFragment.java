package com.java.atg;

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

    private final int rowItemCount = 3;
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

    /**
     * Make Row View representation from [ProcInfo]
     */
    private TableRow ProcInfoToTableRow(LayoutInflater inflater, ProcInfo procInfo, int apkIndex) {

        TableRow rowView = (TableRow) inflater.inflate(R.layout.process_table_row, null);
        // =========== setup row ===========
        assert (rowItemCount == rowView.getChildCount());
        // set number
        TextView orderNumView = (TextView) rowView.getChildAt(0);
        orderNumView.setText(String.format("%d.", apkIndex + 1));
        // set Pid
        TextView pidView = (TextView) rowView.getChildAt(1);
        pidView.setText(procInfo.GetPidStr());
        // set ApkName
        TextView apkNameView = (TextView) rowView.getChildAt(2);
        apkNameView.setMovementMethod(new ScrollingMovementMethod());
        apkNameView.setText(procInfo.GetName());
        // =================================
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