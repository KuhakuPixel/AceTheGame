package modder;
import javafx.scene.control.Alert;
import java.util.Optional;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonType;
public class GuiUtil {
    
    public static void ShowAlert(String title, String errHeader, String errMsg) {
        Alert alert = new Alert(AlertType.ERROR);
        alert.setTitle(title);
        alert.setHeaderText(errHeader);
        alert.setContentText(errMsg);
        Optional<ButtonType> result = alert.showAndWait();

        if (result.isPresent()) {

            if (result.get() == ButtonType.OK) {
                System.out.println("Pressed OK.");
            }

        }
    }
}
