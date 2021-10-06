package com.example.movify;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;

public class RegisterActivity extends AppCompatActivity {

    private static final String TAG = "Login";
    private FirebaseAuth mAuth;

    //private static final String TAG="";
    @Override
    public void onStart() {
        super.onStart();
        // Check if user is signed in (non-null) and update UI accordingly.
        FirebaseUser currentUser = mAuth.getCurrentUser();
        //updateUI(currentUser);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);
        final EditText email = findViewById(R.id.EmailAddress);
        final EditText password = findViewById(R.id.Password);
        final EditText confirmpassword = findViewById(R.id.ConfirmPassword);
        Button register = findViewById(R.id.register_btn);
        mAuth = FirebaseAuth.getInstance();
        register.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String email_value = email.getText().toString().trim();
                String password_value = password.getText().toString().trim();
                String confirm_password_value = confirmpassword.getText().toString().trim();

                if(password_value == confirm_password_value)
                {
                mAuth.signInWithEmailAndPassword(email_value, password_value).addOnCompleteListener(new OnCompleteListener<AuthResult>() {
                    @Override
                    public void onComplete(@NonNull Task<AuthResult> task) {
                        if (task.isSuccessful()) {
                            Toast.makeText(RegisterActivity.this, "You are successfully Registered", Toast.LENGTH_SHORT).show();
                        } else {
                            Toast.makeText(RegisterActivity.this, "You are not Registered! Try again", Toast.LENGTH_SHORT).show();
                        }
                    }
                });

            }
            else
                {
                    Toast.makeText(RegisterActivity.this, "Password and Confirm Password Should be same.", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

    public void btnBack(View view) {
        Intent intent = new Intent(this, MainActivity.class);
        startActivity(intent);

    }
}