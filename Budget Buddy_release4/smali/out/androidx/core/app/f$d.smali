.class final Landroidx/core/app/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field private b:Landroid/app/Activity;

.field private final c:I

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/f$d;->d:Z

    iput-boolean v0, p0, Landroidx/core/app/f$d;->e:Z

    iput-boolean v0, p0, Landroidx/core/app/f$d;->f:Z

    iput-object p1, p0, Landroidx/core/app/f$d;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroidx/core/app/f$d;->c:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/app/f$d;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/app/f$d;->b:Landroid/app/Activity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/app/f$d;->e:Z

    :cond_a
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    iget-boolean v0, p0, Landroidx/core/app/f$d;->e:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroidx/core/app/f$d;->f:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroidx/core/app/f$d;->d:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/core/app/f$d;->a:Ljava/lang/Object;

    iget v1, p0, Landroidx/core/app/f$d;->c:I

    invoke-static {v0, v1, p1}, Landroidx/core/app/f;->h(Ljava/lang/Object;ILandroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/app/f$d;->f:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/app/f$d;->a:Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/app/f$d;->b:Landroid/app/Activity;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/app/f$d;->d:Z

    :cond_7
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
