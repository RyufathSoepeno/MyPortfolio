.class public Landroidx/lifecycle/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/a0$b;,
        Landroidx/lifecycle/a0$d;,
        Landroidx/lifecycle/a0$c;,
        Landroidx/lifecycle/a0$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/d0;

.field private final b:Landroidx/lifecycle/a0$b;

.field private final c:Lw/a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/a0$b;)V
    .registers 10

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/a0$b;Lw/a;ILkotlin/jvm/internal/g;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/a0$b;Lw/a;)V
    .registers 5

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/a0;->a:Landroidx/lifecycle/d0;

    iput-object p2, p0, Landroidx/lifecycle/a0;->b:Landroidx/lifecycle/a0$b;

    iput-object p3, p0, Landroidx/lifecycle/a0;->c:Lw/a;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/a0$b;Lw/a;ILkotlin/jvm/internal/g;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    sget-object p3, Lw/a$a;->b:Lw/a$a;

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/a0$b;Lw/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/e0;)V
    .registers 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/e0;->R()Landroidx/lifecycle/d0;

    move-result-object v0

    const-string v1, "owner.viewModelStore"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/a0$a;->e:Landroidx/lifecycle/a0$a$a;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/a0$a$a;->a(Landroidx/lifecycle/e0;)Landroidx/lifecycle/a0$b;

    move-result-object v1

    invoke-static {p1}, Landroidx/lifecycle/c0;->a(Landroidx/lifecycle/e0;)Lw/a;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/a0$b;Lw/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/e0;Landroidx/lifecycle/a0$b;)V
    .registers 5

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/e0;->R()Landroidx/lifecycle/d0;

    move-result-object v0

    const-string v1, "owner.viewModelStore"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/c0;->a(Landroidx/lifecycle/e0;)Lw/a;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Landroidx/lifecycle/a0;-><init>(Landroidx/lifecycle/d0;Landroidx/lifecycle/a0$b;Lw/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/z;
    .registers 5
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

    if-eqz v0, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/a0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p1

    return-object p1

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/z;
    .registers 5
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

    iget-object v0, p0, Landroidx/lifecycle/a0;->a:Landroidx/lifecycle/d0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/d0;->b(Ljava/lang/String;)Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object p1, p0, Landroidx/lifecycle/a0;->b:Landroidx/lifecycle/a0$b;

    instance-of p2, p1, Landroidx/lifecycle/a0$d;

    if-eqz p2, :cond_1f

    check-cast p1, Landroidx/lifecycle/a0$d;

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-eqz p1, :cond_2a

    const-string p2, "viewModel"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/a0$d;->c(Landroidx/lifecycle/z;)V

    :cond_2a
    if-eqz v0, :cond_2d

    return-object v0

    :cond_2d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    new-instance v0, Lw/d;

    iget-object v1, p0, Landroidx/lifecycle/a0;->c:Lw/a;

    invoke-direct {v0, v1}, Lw/d;-><init>(Lw/a;)V

    sget-object v1, Landroidx/lifecycle/a0$c;->c:Lw/a$b;

    invoke-virtual {v0, v1, p1}, Lw/d;->c(Lw/a$b;Ljava/lang/Object;)V

    :try_start_41
    iget-object v1, p0, Landroidx/lifecycle/a0;->b:Landroidx/lifecycle/a0$b;

    invoke-interface {v1, p2, v0}, Landroidx/lifecycle/a0$b;->b(Ljava/lang/Class;Lw/a;)Landroidx/lifecycle/z;

    move-result-object p2
    :try_end_47
    .catch Ljava/lang/AbstractMethodError; {:try_start_41 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    iget-object v0, p0, Landroidx/lifecycle/a0;->b:Landroidx/lifecycle/a0$b;

    invoke-interface {v0, p2}, Landroidx/lifecycle/a0$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/z;

    move-result-object p2

    :goto_4e
    iget-object v0, p0, Landroidx/lifecycle/a0;->a:Landroidx/lifecycle/d0;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/d0;->d(Ljava/lang/String;Landroidx/lifecycle/z;)V

    return-object p2
.end method
