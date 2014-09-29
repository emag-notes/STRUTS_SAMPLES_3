package action.form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author tanabe
 */
public class VariousInputForm extends ActionForm {

  private String name;
  private String password;
  private String etc;
  private boolean check1;
  private boolean check2;
  private String[] multi1;
  private String radio1;
  private String[] select1;
  private String[] select2;
  private String hidden1;

  public VariousInputForm() {
    check2 = true;
    multi1 = new String[0];
    select2 = new String[0];
  }

  @Override
  public void reset(ActionMapping mapping, HttpServletRequest request) {
    check1 = false;
    check2 = false;
    multi1 = new String[0];
    select1 = new String[0];
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getEtc() {
    return etc;
  }

  public void setEtc(String etc) {
    this.etc = etc;
  }

  public boolean isCheck1() {
    return check1;
  }

  public void setCheck1(boolean check1) {
    this.check1 = check1;
  }

  public boolean isCheck2() {
    return check2;
  }

  public void setCheck2(boolean check2) {
    this.check2 = check2;
  }

  public String[] getMulti1() {
    return multi1;
  }

  public void setMulti1(String[] multi1) {
    this.multi1 = multi1;
  }

  public String getRadio1() {
    return radio1;
  }

  public void setRadio1(String radio1) {
    this.radio1 = radio1;
  }

  public String[] getSelect1() {
    return select1;
  }

  public void setSelect1(String[] select1) {
    this.select1 = select1;
  }

  public String[] getSelect2() {
    return select2;
  }

  public void setSelect2(String[] select2) {
    this.select2 = select2;
  }

  public String getHidden1() {
    return hidden1;
  }

  public void setHidden1(String hidden1) {
    this.hidden1 = hidden1;
  }

}
