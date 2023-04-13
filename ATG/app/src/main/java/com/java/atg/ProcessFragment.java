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

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;
    //
    private final int rowItemCount = 3;

    public ProcessFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment ProcessFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static ProcessFragment newInstance(String param1, String param2) {
        ProcessFragment fragment = new ProcessFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
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
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View mainView = inflater.inflate(R.layout.fragment_process, container, false);
        TableLayout procTable = mainView.findViewById(R.id.ProcessTable);

        ACE ace = null;
        try {
            ace = new ACE();
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        List<ProcInfo> runningProcs = ace.ListRunningProc();
        for (int i = 0; i < runningProcs.size(); i++) {
            TableRow rowView = ProcInfoToTableRow(inflater, runningProcs.get(i), i);
            procTable.addView(rowView);
        }
        return mainView;
    }
}