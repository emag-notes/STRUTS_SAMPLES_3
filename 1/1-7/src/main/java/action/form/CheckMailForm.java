package action.form;

import org.apache.struts.validator.ValidatorForm;

/**
 * @author tanabe
 */
public class CheckMailForm extends ValidatorForm {

  private String mailAddress;
  private String reMailAddress;

  public String getMailAddress() {
    return mailAddress;
  }

  public void setMailAddress(String mailAddress) {
    this.mailAddress = mailAddress;
  }

  public String getReMailAddress() {
    return reMailAddress;
  }

  public void setReMailAddress(String reMailAddress) {
    this.reMailAddress = reMailAddress;
  }

}
