.class Lcom/google/android/gms/cast/internal/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/internal/g;

.field final synthetic b:Lcom/google/android/gms/cast/internal/DeviceStatus;

.field final synthetic c:Lcom/google/android/gms/cast/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/i;Lcom/google/android/gms/cast/internal/g;Lcom/google/android/gms/cast/internal/DeviceStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/k;->c:Lcom/google/android/gms/cast/internal/i;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/cast/internal/g;

    iput-object p3, p0, Lcom/google/android/gms/cast/internal/k;->b:Lcom/google/android/gms/cast/internal/DeviceStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/k;->a:Lcom/google/android/gms/cast/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/k;->b:Lcom/google/android/gms/cast/internal/DeviceStatus;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/g;->a(Lcom/google/android/gms/cast/internal/g;Lcom/google/android/gms/cast/internal/DeviceStatus;)V

    return-void
.end method
