.class Lb0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/o;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/s;->a:Ljava/lang/String;

    iput p2, p0, Lb0/s;->b:I

    return-void
.end method


# virtual methods
.method public synthetic a(Lb0/i;Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lb0/n;->a(Lb0/o;Lb0/i;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lb0/s;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb0/s;->c:Landroid/os/HandlerThread;

    iput-object v0, p0, Lb0/s;->d:Landroid/os/Handler;

    :cond_c
    return-void
.end method

.method public c(Lb0/k;)V
    .registers 3

    iget-object v0, p0, Lb0/s;->d:Landroid/os/Handler;

    iget-object p1, p1, Lb0/k;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .registers 4

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lb0/s;->a:Ljava/lang/String;

    iget v2, p0, Lb0/s;->b:I

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lb0/s;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lb0/s;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lb0/s;->d:Landroid/os/Handler;

    return-void
.end method
