.class Landroidx/lifecycle/LegacySavedStateHandleController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LegacySavedStateHandleController$a;
    }
.end annotation


# direct methods
.method static a(Landroidx/lifecycle/z;Ly/c;Landroidx/lifecycle/f;)V
    .registers 4

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroidx/lifecycle/SavedStateHandleController;->j()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->h(Ly/c;Landroidx/lifecycle/f;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/LegacySavedStateHandleController;->c(Ly/c;Landroidx/lifecycle/f;)V

    :cond_16
    return-void
.end method

.method static b(Ly/c;Landroidx/lifecycle/f;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
    .registers 5

    invoke-virtual {p0, p2}, Ly/c;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p3}, Landroidx/lifecycle/t;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/t;

    move-result-object p3

    new-instance v0, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v0, p2, p3}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/t;)V

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->h(Ly/c;Landroidx/lifecycle/f;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/LegacySavedStateHandleController;->c(Ly/c;Landroidx/lifecycle/f;)V

    return-object v0
.end method

.method private static c(Ly/c;Landroidx/lifecycle/f;)V
    .registers 4

    invoke-virtual {p1}, Landroidx/lifecycle/f;->b()Landroidx/lifecycle/f$c;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$c;->f:Landroidx/lifecycle/f$c;

    if-eq v0, v1, :cond_1a

    sget-object v1, Landroidx/lifecycle/f$c;->h:Landroidx/lifecycle/f$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f$c;->a(Landroidx/lifecycle/f$c;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    :cond_11
    new-instance v0, Landroidx/lifecycle/LegacySavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/LegacySavedStateHandleController$1;-><init>(Landroidx/lifecycle/f;Ly/c;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/h;)V

    goto :goto_1f

    :cond_1a
    :goto_1a
    const-class p1, Landroidx/lifecycle/LegacySavedStateHandleController$a;

    invoke-virtual {p0, p1}, Ly/c;->i(Ljava/lang/Class;)V

    :goto_1f
    return-void
.end method
