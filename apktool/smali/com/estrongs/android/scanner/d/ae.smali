.class Lcom/estrongs/android/scanner/d/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/z;

.field private b:Lcom/estrongs/android/scanner/a/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/d/z;Lcom/estrongs/android/scanner/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/ae;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/ae;->b:Lcom/estrongs/android/scanner/a/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ae;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->c(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ae;->b:Lcom/estrongs/android/scanner/a/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ae;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->c(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ae;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ae;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ae;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/z;->c(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->e(Ljava/lang/String;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ae;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->c(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
