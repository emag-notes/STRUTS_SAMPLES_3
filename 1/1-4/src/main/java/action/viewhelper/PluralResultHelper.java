package action.viewhelper;

import model.DataModel;

/**
 * DataModel クラスを内包して表示の補助をするクラス
 *
 * @author tanabe
 */
public class PluralResultHelper {

  private DataModel data;
  private boolean changed;

  public DataModel getData() {
    return data;
  }

  public void setData(DataModel data) {
    this.data = data;
  }

  public boolean isChanged() {
    return changed;
  }

  public void setChanged(boolean changed) {
    this.changed = changed;
  }

}
