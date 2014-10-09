package action;

import action.form.PluralForm;
import model.DataModel;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @author tanabe
 */
public class PluralRequestAction extends Action {

  public static final String DATA = "data";
  private static final String NAME_PRE = "Name";
  private static final String DATA_PRE = "Data";

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request, HttpServletResponse response) throws Exception {

    // 1)DynaActionForm から行数を取得する
    DynaActionForm dForm = (DynaActionForm) form;
    int count = (int) dForm.get("count");

    // 表示するデータを格納する List
    List<DataModel> list = new ArrayList<>();

    for (int i = 0; i < count; i++) {
      // 2)表形式データの生成を行う
      list.add(new DataModel(NAME_PRE + i, DATA_PRE + i));
    }

    // 3)次画面のフォーム情報の初期化
    PluralForm pluralForm = new PluralForm();
    pluralForm.setData(list);
    request.setAttribute("PluralForm", pluralForm);

    // 4)比較用としてセッションに修正前のデータを格納
    request.getSession().setAttribute(DATA, list);

    return mapping.findForward("show");

  }
}
