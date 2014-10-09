package action;

import action.form.PluralForm;
import action.viewhelper.PluralResultHelper;
import model.DataModel;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @author tanabe
 */
public class PluralAction extends Action {

  private static final String RESULT = "Result";

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request, HttpServletResponse response) throws Exception {

    PluralForm pluralForm = (PluralForm) form;

    // 比較用に格納しておいたデータを取り出す
    @SuppressWarnings("unchecked")
    List<DataModel> beforeData = (List<DataModel>) request.getSession().getAttribute(PluralRequestAction.DATA);

    // ViewHelper を格納する List
    List<PluralResultHelper> resultList = new ArrayList<>();

    // 入力されたデータを取り出す
    List<DataModel> afterData = pluralForm.getAllData();

    for (int i = 0; i < beforeData.size(); i++) {
      PluralResultHelper helper = new PluralResultHelper();

      // 値の変更の有無を確認
      helper.setChanged(! beforeData.get(i).equals(afterData.get(i)));

      helper.setData(afterData.get(i));
      resultList.add(i, helper);
    }

    // 最初のデータは不要なのでセッションオブジェクトから削除する
    request.getSession().removeAttribute(PluralRequestAction.DATA);

    // ViewHelper のリストを結果としてリクエストに設定
    request.setAttribute(RESULT, resultList);

    return mapping.findForward("result");

  }

}
