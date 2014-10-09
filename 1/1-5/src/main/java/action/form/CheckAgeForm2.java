package action.form;

import org.apache.struts.validator.ValidatorForm;

/**
 * @author tanabe
 */
public class CheckAgeForm2 extends ValidatorForm {

  private String age;

  public String getAge() {
    return age;
  }

  public void setAge(String age) {
    this.age = age;
  }
}
