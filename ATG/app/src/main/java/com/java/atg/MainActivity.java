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

import java.io.IOException;

import com.topjohnwu.superuser.Shell;

import org.apache.commons.lang3.exception.ExceptionUtils;

public class MainActivity extends AppCompatActivity {

    private AppBarConfiguration appBarConfiguration;
    private ActivityMainBinding binding;

    static {
        // Set settings before the main shell can be created
        Shell.enableVerboseLogging = BuildConfig.DEBUG;
        /*
        Shell.setDefaultBuilder(Shell.Builder.create()
                .setFlags(Shell.FLAG_REDIRECT_STDERR)
                .setTimeout(30)
        );
         */
    }


    private void RunBinary() throws IOException, InterruptedException {
        ACEServer.Start();
        System.out.println("Waiting for server to start");
        // =================

        ACEClient client = new ACEClient();
        String reply = client.Request("attached");
        System.out.printf("Reply is %s", reply);
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
                    } catch (IOException e) {
                        System.out.println("Error when running binary");
                        Log.e("ATG", ExceptionUtils.getStackTrace(e));
                        Log.e("ATG", e.getMessage());
                    } catch (InterruptedException e) {
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