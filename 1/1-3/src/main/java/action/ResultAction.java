package action;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author tanabe
 */
public class ResultAction extends Action {

  private static final String CANCEL = "isCancel";

  public ActionForward execute(ActionMapping mapping, ActionForm form,
                               HttpServletRequest request, HttpServletResponse response) throws Exception {
    if (isCancelled(request)) {
      request.setAttribute(CANCEL, true);
    }
    return mapping.findForward("result");
  }
}
