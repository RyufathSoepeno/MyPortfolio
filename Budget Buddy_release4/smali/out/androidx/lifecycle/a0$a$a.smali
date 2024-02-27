.class public final Landroidx/lifecycle/a0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/a0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/a0$a$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/a0$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/e0;)Landroidx/lifecycle/a0$b;
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/lifecycle/e;

    if-eqz v0, :cond_15

    check-cast p1, Landroidx/lifecycle/e;

    invoke-interface {p1}, Landroidx/lifecycle/e;->H()Landroidx/lifecycle/a0$b;

    move-result-object p1

    const-string v0, "owner.defaultViewModelProviderFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1b

    :cond_15
    sget-object p1, Landroidx/lifecycle/a0$c;->a:Landroidx/lifecycle/a0$c$a;

    invoke-virtual {p1}, Landroidx/lifecycle/a0$c$a;->a()Landroidx/lifecycle/a0$c;

    move-result-object p1

    :goto_1b
    return-object p1
.end method

.method public final b(Landroid/app/Application;)Landroidx/lifecycle/a0$a;
    .registers 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/lifecycle/a0$a;->e()Landroidx/lifecycle/a0$a;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v0, Landroidx/lifecycle/a0$a;

    invoke-direct {v0, p1}, Landroidx/lifecycle/a0$a;-><init>(Landroid/app/Application;)V

    invoke-static {v0}, Landroidx/lifecycle/a0$a;->f(Landroidx/lifecycle/a0$a;)V

    :cond_13
    invoke-static {}, Landroidx/lifecycle/a0$a;->e()Landroidx/lifecycle/a0$a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/k;->b(Ljava/lang/Object;)V

    return-object p1
.end method
