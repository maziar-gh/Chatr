package ir.maziardev.chatrapp.activitys;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.core.content.FileProvider;

import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.downloader.Error;
import com.downloader.OnCancelListener;
import com.downloader.OnDownloadListener;
import com.downloader.OnPauseListener;
import com.downloader.OnProgressListener;
import com.downloader.OnStartOrResumeListener;
import com.downloader.PRDownloader;
import com.downloader.Progress;

import java.io.File;

import butterknife.BindView;
import butterknife.ButterKnife;
import ir.maziardev.chatrapp.BuildConfig;
import ir.maziardev.chatrapp.R;
import ir.maziardev.chatrapp.classes.Utils;
import ir.maziardev.chatrapp.enums.Extras;

public class DialogUpdateActivity extends AppCompatActivity {

    private final String FILE_NAME = "chatr.apk";
    private final String FILE_BASE_PATH = "file://";
    private final String MIME_TYPE = "application/vnd.android.package-archive";
    private final String PROVIDER_PATH = ".provider";
    private final String APP_INSTALL_PATH = "\"application/vnd.android.package-archive\"";

    int downloadIdFourteen;
    private static String dirPath;
    private String url;

    @BindView(R.id.update_progress)
    ProgressBar progressBar;
    @BindView(R.id.update_title)
    TextView tvupdateview;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dialog_update);
        this.setFinishOnTouchOutside(false);
        ButterKnife.bind(this);

        Bundle ex = getIntent().getExtras();
        if (ex != null) {
            url = ex.getString(Extras.EXTRA_URL.toString(), "");
        }

        String destination = getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).toString() + "/";
        destination += FILE_NAME;
        Uri uri = Uri.parse("$FILE_BASE_PATH$destination");
        File file = new  File(destination);
        if (file.exists()) file.delete();


        progressBar.setIndeterminate(true);
        progressBar.getIndeterminateDrawable().setColorFilter(
                Color.BLUE, android.graphics.PorterDuff.Mode.SRC_IN);

        //dirPath = Utils.getRootDirPath(getApplicationContext());
        dirPath = getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).toString();

        String finalDestination = destination;
        downloadIdFourteen = PRDownloader.download(url, dirPath, "chatr.apk")
                .build()
                .setOnStartOrResumeListener(new OnStartOrResumeListener() {
                    @Override
                    public void onStartOrResume() {
                        progressBar.setIndeterminate(false);

                                        /*progressBarFourteen.setIndeterminate(false);
                                        buttonFourteen.setEnabled(true);
                                        buttonFourteen.setText(R.string.pause);
                                        buttonCancelFourteen.setEnabled(true);
                                        buttonCancelFourteen.setText(R.string.cancel);*/
                    }
                })
                .setOnPauseListener(new OnPauseListener() {
                    @Override
                    public void onPause() {

                        /*buttonFourteen.setText(R.string.resume);*/
                    }
                })
                .setOnCancelListener(new OnCancelListener() {
                    @Override
                    public void onCancel() {

//                                        downloadIdFourteen = 0;
//                                        buttonFourteen.setText(R.string.start);
//                                        buttonCancelFourteen.setEnabled(false);
//                                        progressBarFourteen.setProgress(0);
//                                        textViewProgressFourteen.setText("");
//                                        progressBarFourteen.setIndeterminate(false);
                    }
                })
                .setOnProgressListener(new OnProgressListener() {
                    @Override
                    public void onProgress(Progress progress) {
                        long progressPercent = progress.currentBytes * 100 / progress.totalBytes;
                        progressBar.setProgress((int) progressPercent);
                        tvupdateview.setText(Utils.getProgressDisplayLine(progress.currentBytes, progress.totalBytes));
                    }
                })
                .start(new OnDownloadListener() {
                    @Override
                    public void onDownloadComplete() {
                        progressBar.setIndeterminate(false);


                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                            Uri contentUri = FileProvider.getUriForFile(
                                    getApplicationContext(),
                                    BuildConfig.APPLICATION_ID + PROVIDER_PATH,
                                    new File(finalDestination)
                            );
                            Intent install =new Intent(Intent.ACTION_VIEW);
                            install.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                            install.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                            install.putExtra(Intent.EXTRA_NOT_UNKNOWN_SOURCE, true);
                            install.setData(contentUri);
                            startActivity(install);

                            // finish()
                        } else {
                            Intent install =new Intent(Intent.ACTION_VIEW);
                            install.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
                            install.setDataAndType(
                                    uri,
                                    APP_INSTALL_PATH
                            );
                            startActivity(install);

                            // finish()
                        }


                        finish();
                    }

                    @Override
                    public void onError(Error error) {
                        Toast.makeText(getApplicationContext(), "خطای بارگذاری: 14", Toast.LENGTH_SHORT).show();

                        tvupdateview.setText("");
                        progressBar.setProgress(0);
                        downloadIdFourteen = 0;
                        progressBar.setIndeterminate(false);

                    }

                });

    }
}
