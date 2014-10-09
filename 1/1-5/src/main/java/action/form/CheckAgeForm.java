package action.form;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import javax.servlet.http.HttpServletRequest;

/**
 * @author tanabe
 */
public class CheckAgeForm extends ActionForm {

  private int age;

  @Override
  public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
    ActionErrors errors = new ActionErrors();

    try {
      String ageString = request.getParameter("age");

      // 1)入力データの必須チェック
      if (ageString == null || "".equals(ageString)) {
        errors.add("age", new ActionMessage("error.age.required"));
        return errors;
      }

      int age = Integer.parseInt(ageString);

      // 2)入力データの範囲チェック
      if (age < 0 || age > 200) {
        errors.add("age", new ActionMessage("error.age.range"));
      }

    } catch (NumberFormatException e) {
      // 3)入力データの型チェック
      errors.add("age", new ActionMessage("error.age.notint"));
    }

    return errors;

  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }
}
