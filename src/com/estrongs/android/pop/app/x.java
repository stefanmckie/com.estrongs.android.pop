package com.estrongs.android.pop.app;

import android.app.Activity;
import android.os.Handler;
import android.text.Html;
import android.widget.FrameLayout;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.an;
import com.estrongs.chromecast.CastDeviceInfo;
import com.estrongs.chromecast.CastDeviceListener;
import com.estrongs.chromecast.ChromeCastConnectionListener;
import java.util.List;

public class x
  extends ci
  implements CastDeviceListener, ChromeCastConnectionListener
{
  private static final String a = x.class.getSimpleName();
  private ag b = ag.g();
  private Handler c = null;
  private int d = -1;
  private boolean e = false;
  private Activity f = null;
  private ai g = null;
  private boolean h = false;
  
  public x(Activity paramActivity)
  {
    super(paramActivity);
    f = paramActivity;
    d();
    if (b.d())
    {
      b.f();
      c();
    }
  }
  
  private void c()
  {
    b.a(this);
    b.a(this);
  }
  
  private void d()
  {
    c = new y(this);
  }
  
  private void e()
  {
    d = 0;
    setTitle(f.getString(2131231157));
    showProgressBar();
    setAllButtonsEnabled(true);
    setMessage(null);
    b();
    setSingleButton(f.getText(2131231265), null);
    if (!h) {
      f();
    }
  }
  
  private void f()
  {
    new Thread(new z(this)).start();
  }
  
  private void g()
  {
    d = 1;
    setTitle(f.getString(2131231157));
    showProgressBar();
    setAllButtonsEnabled(true);
    setMessage(null);
    b();
    setSingleButton(f.getText(2131231265), null);
    c.sendEmptyMessageDelayed(0, 10000L);
    b.h();
  }
  
  private void h()
  {
    d = 2;
    setTitle(f.getString(2131231157));
    hideProgressBar();
    setMessage(Html.fromHtml(f.getString(2131231152) + "<font size='8px' color='grey'><br />" + f.getString(2131231153) + "</font>"));
    b();
    setConfirmButton(f.getText(2131231723), new ab(this));
    setCancelButton(f.getText(2131231265), null);
  }
  
  private void i()
  {
    d = 3;
    setTitle(f.getString(2131231157));
    hideAllButtons();
    setMessage(null);
    setSelectable(false);
    b();
    List localList = b.x();
    if ((localList != null) && (localList.size() != 0))
    {
      String[] arrayOfString = new String[localList.size()];
      int i = 0;
      while (i < localList.size())
      {
        arrayOfString[i] = ((CastDeviceInfo)localList.get(i)).getFriendlyName();
        i += 1;
      }
      setItems(arrayOfString, 0, new ac(this, localList));
    }
    for (;;)
    {
      hideProgressBar();
      return;
      h();
    }
  }
  
  private void j()
  {
    d = 5;
    setTitle(f.getString(2131231157));
    setMessage(null);
    showProgressBar();
    setAllButtonsEnabled(true);
    b();
    setSingleButton(f.getText(2131231265), new ad(this));
  }
  
  private void k()
  {
    d = 4;
    setTitle(f.getString(2131231157));
    hideProgressBar();
    CastDeviceInfo localCastDeviceInfo = b.y();
    if (localCastDeviceInfo != null) {
      setMessage(localCastDeviceInfo.getFriendlyName());
    }
    b();
    setConfirmButton(f.getText(2131231148), new ae(this));
    setCancelButton(f.getText(2131230851), new af(this));
  }
  
  public void a()
  {
    b.b(this);
    b.b(this);
  }
  
  public void a(ai paramai)
  {
    g = paramai;
  }
  
  public void b()
  {
    if ((mContentContainer != null) && (listView != null))
    {
      mContentContainer.removeView(listView);
      listView = null;
    }
  }
  
  public void dismiss()
  {
    super.dismiss();
  }
  
  public void onConnected()
  {
    e = true;
    dismiss();
    if (g != null) {
      g.a();
    }
  }
  
  public void onConnectionFailed()
  {
    i();
    e = false;
    ak.a(f, 2131231901, 1);
    if (g != null) {
      g.b();
    }
  }
  
  public void onConnectionSuspended() {}
  
  public void onDeviceAdded(CastDeviceInfo paramCastDeviceInfo)
  {
    try
    {
      if (!isDismissed()) {
        i();
      }
      c.removeMessages(0);
      return;
    }
    catch (Exception paramCastDeviceInfo)
    {
      paramCastDeviceInfo.printStackTrace();
    }
  }
  
  public void onDeviceRemoved(CastDeviceInfo paramCastDeviceInfo)
  {
    if (d == 3) {
      i();
    }
  }
  
  public void onDeviceSelected(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceUnSelected(CastDeviceInfo paramCastDeviceInfo)
  {
    e = false;
    if (g != null) {
      g.b();
    }
  }
  
  public void onDeviceVolumeChanged(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDisconnected() {}
  
  public void show()
  {
    if (!an.b())
    {
      ak.a(f, 2131232578, 1);
      return;
    }
    if (!w.a("com.android.vending"))
    {
      ak.a(f, 2131231150, 1);
      return;
    }
    if (!b.c())
    {
      e();
      super.show();
      return;
    }
    if (b.p()) {
      k();
    }
    for (;;)
    {
      b.h();
      break;
      if ((b.x() == null) || (b.x().size() == 0)) {
        g();
      } else if ((b.x() != null) && (b.x().size() > 0)) {
        i();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */