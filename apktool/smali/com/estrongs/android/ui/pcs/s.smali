.class Lcom/estrongs/android/ui/pcs/s;
.super Lcom/baidu/sapi2/shell/listener/AuthorizationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/r;->a(Lcom/estrongs/android/ui/pcs/r;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/r;->b(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/r;->b(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->e()V

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/r;->b(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/r;->c(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/ui/pcs/f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/r;->c(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/ui/pcs/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/f;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/r;->d(Lcom/estrongs/android/ui/pcs/r;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_4
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/r;->d(Lcom/estrongs/android/ui/pcs/r;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/r;->e(Lcom/estrongs/android/ui/pcs/r;)Z

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/r;->f(Lcom/estrongs/android/ui/pcs/r;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3, v4}, Lcom/estrongs/android/ui/pcs/am;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/r;->e(Lcom/estrongs/android/ui/pcs/r;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/r;->g(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/r;->g(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/pcs/u;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/r;->g(Lcom/estrongs/android/ui/pcs/r;)Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/u;->a(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/r;->a(Lcom/estrongs/android/ui/pcs/r;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/r;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->dismiss()V

    goto/16 :goto_0
.end method
