package com.java.atg;

import android.os.Bundle;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;

import android.util.Log;
import android.view.View;

import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import androidx.navigation.fragment.NavHostFragment;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.NavigationUI;

import com.java.atg.databinding.ActivityMainBinding;

import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toolbar;

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

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Preheat the main root shell in the splash screen
        // so the app can use it afterwards without interrupting
        // application flow (e.g. root permission prompt)
        Shell.getShell(

                shell -> {
                    setContentView(R.layout.activity_main);

                    BottomNavigationView navigationView = findViewById(R.id.bottom_navigation_view);

                    AppBarConfiguration appBarConfiguration = new AppBarConfiguration.Builder(

                            R.id.processFragment, R.id.memoryFragment, R.id.settingFragment).build();

                    // this.getSupportActionBar();
                    NavHostFragment navHostFragment = (NavHostFragment) getSupportFragmentManager().findFragmentById(R.id.nav_fragment_host);
                    NavController navController = navHostFragment.getNavController();
                    NavigationUI.setupActionBarWithNavController(this,navController, appBarConfiguration);
                    NavigationUI.setupWithNavController(navigationView, navController);

                }

        );
    }

}