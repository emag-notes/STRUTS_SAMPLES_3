package action.form;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.validator.ValidatorForm;

import javax.servlet.http.HttpServletRequest;

/**
 * @author tanabe
 */
public class CheckMailForm extends ValidatorForm {

  private String mailAddress;
  private String reMailAddress;

  @Override
  public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {

    // 1)super 呼び出しをすることで Struts Validator を有効にしている
    ActionErrors errors = super.validate(mapping, request);

    /*
     * 2)Struts Validator でエラーがあった場合は、
     * Validator のチェックのみでエラー画面を返す
     * 必須チェックによって null を回避する
     */
    if (! errors.isEmpty()) {
      return errors;
    }

    /*
     * 3)メールアドレスの形式チェック設定
     * 入力された 2 つのアドレスを比較、異なっていれば検証エラーとする
     */
    if (!mailAddress.equals(reMailAddress)) {
      errors.add("reMailAddress", new ActionMessage("error.reMailAddress.notsame"));
    }

    return errors;

  }

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
