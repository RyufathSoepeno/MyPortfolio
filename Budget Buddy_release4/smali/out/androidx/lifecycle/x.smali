.class public final Landroidx/lifecycle/x;
.super Landroidx/lifecycle/a0$d;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0$b;


# instance fields
.field private a:Landroid/app/Application;

.field private final b:Landroidx/lifecycle/a0$b;

.field private c:Landroid/os/Bundle;

.field private d:Landroidx/lifecycle/f;

.field private e:Ly/c;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ly/e;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/a0$d;-><init>()V

    invoke-interface {p2}, Ly/e;->o()Ly/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/x;->e:Ly/c;

    invoke-interface {p2}, Landroidx/lifecycle/i;->a()Landroidx/lifecycle/f;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/x;->d:Landroidx/lifecycle/f;

    iput-object p3, p0, Landroidx/lifecycle/x;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/x;->a:Landroid/app/Application;

    if-eqz p1, :cond_21

    sget-object p2, Landroidx/lifecycle/a0$a;->e:Landroidx/lifecycle/a0$a$a;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/a0$a$a;->b(Landroid/app/Application;)Landroidx/lifecycle/a0$a;

    move-result-object p1

    goto :goto_26

    :cond_21
    new-instance p1, Landroidx/lifecycle/a0$a;

    invoke-direct {p1}, Landroidx/lifecycle/a0$a;-><init>()V

    :goto_26
    iput-object p1, p0, Landroidx/lifecycle/x;->b:Landroidx/lifecycle/a0$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/z;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/x;->d(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Class;Lw/a;)Landroidx/lifecycle/z;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lw/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/a0$c;->c:Lw/a$b;

    invoke-virtual {p2, v0}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_80

    sget-object v1, Landroidx/lifecycle/u;->a:Lw/a$b;

    invoke-virtual {p2, v1}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6f

    sget-object v1, Landroidx/lifecycle/u;->b:Lw/a$b;

    invoke-virtual {p2, v1}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6f

    sget-object v0, Landroidx/lifecycle/a0$a;->g:Lw/a$b;

    invoke-virtual {p2, v0}, Lw/a;->a(Lw/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3b

    if-eqz v0, :cond_3b

    invoke-static {}, Landroidx/lifecycle/y;->a()Ljava/util/List;

    move-result-object v2

    goto :goto_3f

    :cond_3b
    invoke-static {}, Landroidx/lifecycle/y;->b()Ljava/util/List;

    move-result-object v2

    :goto_3f
    invoke-static {p1, v2}, Landroidx/lifecycle/y;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-nez v2, :cond_4c

    iget-object v0, p0, Landroidx/lifecycle/x;->b:Landroidx/lifecycle/a0$b;

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/a0$b;->b(Ljava/lang/Class;Lw/a;)Landroidx/lifecycle/z;

    move-result-object p1

    return-object p1

    :cond_4c
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_62

    if-eqz v0, :cond_62

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p2}, Landroidx/lifecycle/u;->a(Lw/a;)Landroidx/lifecycle/t;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p1, v2, v1}, Landroidx/lifecycle/y;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/z;

    move-result-object p1

    goto :goto_77

    :cond_62
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2}, Landroidx/lifecycle/u;->a(Lw/a;)Landroidx/lifecycle/t;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v2, v0}, Landroidx/lifecycle/y;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/z;

    move-result-object p1

    goto :goto_77

    :cond_6f
    iget-object p2, p0, Landroidx/lifecycle/x;->d:Landroidx/lifecycle/f;

    if-eqz p2, :cond_78

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/x;->d(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    :goto_77
    return-object p1

    :cond_78
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Landroidx/lifecycle/z;)V
    .registers 4

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/x;->d:Landroidx/lifecycle/f;

    if-eqz v0, :cond_e

    iget-object v1, p0, Landroidx/lifecycle/x;->e:Ly/c;

    invoke-static {p1, v1, v0}, Landroidx/lifecycle/LegacySavedStateHandleController;->a(Landroidx/lifecycle/z;Ly/c;Landroidx/lifecycle/f;)V

    :cond_e
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/z;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/z;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/x;->d:Landroidx/lifecycle/f;

    if-eqz v0, :cond_7e

    const-class v0, Landroidx/lifecycle/a;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Landroidx/lifecycle/x;->a:Landroid/app/Application;

    if-eqz v1, :cond_1f

    invoke-static {}, Landroidx/lifecycle/y;->a()Ljava/util/List;

    move-result-object v1

    goto :goto_23

    :cond_1f
    invoke-static {}, Landroidx/lifecycle/y;->b()Ljava/util/List;

    move-result-object v1

    :goto_23
    invoke-static {p2, v1}, Landroidx/lifecycle/y;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-nez v1, :cond_3f

    iget-object p1, p0, Landroidx/lifecycle/x;->a:Landroid/app/Application;

    if-eqz p1, :cond_34

    iget-object p1, p0, Landroidx/lifecycle/x;->b:Landroidx/lifecycle/a0$b;

    invoke-interface {p1, p2}, Landroidx/lifecycle/a0$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    goto :goto_3e

    :cond_34
    sget-object p1, Landroidx/lifecycle/a0$c;->a:Landroidx/lifecycle/a0$c$a;

    invoke-virtual {p1}, Landroidx/lifecycle/a0$c$a;->a()Landroidx/lifecycle/a0$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/a0$c;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    :goto_3e
    return-object p1

    :cond_3f
    iget-object v2, p0, Landroidx/lifecycle/x;->e:Ly/c;

    iget-object v3, p0, Landroidx/lifecycle/x;->d:Landroidx/lifecycle/f;

    iget-object v4, p0, Landroidx/lifecycle/x;->c:Landroid/os/Bundle;

    invoke-static {v2, v3, p1, v4}, Landroidx/lifecycle/LegacySavedStateHandleController;->b(Ly/c;Landroidx/lifecycle/f;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p1

    const-string v2, "controller.handle"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_69

    iget-object v0, p0, Landroidx/lifecycle/x;->a:Landroid/app/Application;

    if-eqz v0, :cond_69

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    aput-object v0, v5, v3

    invoke-virtual {p1}, Landroidx/lifecycle/SavedStateHandleController;->i()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v5, v4

    invoke-static {p2, v1, v5}, Landroidx/lifecycle/y;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/z;

    move-result-object p2

    goto :goto_78

    :cond_69
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/lifecycle/SavedStateHandleController;->i()Landroidx/lifecycle/t;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v0, v3

    invoke-static {p2, v1, v0}, Landroidx/lifecycle/y;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/z;

    move-result-object p2

    :goto_78
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p2, v0, p1}, Landroidx/lifecycle/z;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_7e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
