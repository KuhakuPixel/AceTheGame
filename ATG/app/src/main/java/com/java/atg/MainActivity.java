package com.java.atg;

import android.os.Bundle;

import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;

import android.util.Log;
import android.view.View;

import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.java.atg.databinding.ActivityMainBinding;

import android.view.Menu;
import android.view.MenuItem;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import com.topjohnwu.superuser.Shell;
import java.util.List;
import org.apache.commons.lang3.exception.ExceptionUtils;

public class MainActivity extends AppCompatActivity {

    private AppBarConfiguration appBarConfiguration;
    private ActivityMainBinding binding;
    static {
        // Set settings before the main shell can be created
        Shell.enableVerboseLogging = BuildConfig.DEBUG;
        Shell.setDefaultBuilder(Shell.Builder.create()
                .setFlags(Shell.FLAG_REDIRECT_STDERR)
                .setTimeout(30)
        );
    }

    private void RunBinary() throws IOException {
        Log.i("ATG", "Running Binary");
        // select only arm binaries, because instrumented test
        // under RobolectricTestRunner seems to run only under arm device
        String path = ACE.GetBinPath() ;
        assert(true == (new File(path).exists()));
        System.out.println("Binary path is " + path);
        String[] cmds = new String[]{path, "--attach-self"};
        String cmd_string = String.join(" ", cmds);
        Shell.Result result;
        // Execute commands synchronously
        System.out.printf("Running command %s\n", cmd_string);
        // TODO: need to run at another thread because it is blocking the current thread
        result = Shell.cmd(cmd_string).exec();
        List<String> out = result.getOut();
        System.out.println("Output of binary: ");
        System.out.println(String.join("\n", out));
        // =================

        ACEClient client = new ACEClient();
        String reply = client.Request("attached");
        Log.i("ATG", "Getting reply ...");
        Log.i("ATG", reply);

    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Preheat the main root shell in the splash screen
        // so the app can use it afterwards without interrupting
        // application flow (e.g. root permission prompt)
        Shell.getShell(

                shell -> {
                    binding = ActivityMainBinding.inflate(getLayoutInflater());
                    setContentView(binding.getRoot());

                    setSupportActionBar(binding.toolbar);

                    NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_content_main);
                    appBarConfiguration = new AppBarConfiguration.Builder(navController.getGraph()).build();
                    NavigationUI.setupActionBarWithNavController(this, navController, appBarConfiguration);

                    try {
                        RunBinary();
                    }catch(IOException e){
                        System.out.println("Error when running binary");
                        Log.e("ATG", ExceptionUtils.getStackTrace(e));
                        Log.e("ATG", e.getMessage());
                    }

                    binding.fab.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            Snackbar.make(view, "Replace with your own action", Snackbar.LENGTH_LONG)
                                    .setAction("Action", null).show();
                        }
                    });
                }

        );


    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    @Override
    public boolean onSupportNavigateUp() {
        NavController navController = Navigation.findNavController(this, R.id.nav_host_fragment_content_main);
        return NavigationUI.navigateUp(navController, appBarConfiguration)
                || super.onSupportNavigateUp();
    }
}