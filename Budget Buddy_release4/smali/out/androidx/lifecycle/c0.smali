.class public final Landroidx/lifecycle/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/lifecycle/e0;)Lw/a;
    .registers 2

    const-string v0, "owner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroidx/lifecycle/e;

    if-eqz v0, :cond_15

    check-cast p0, Landroidx/lifecycle/e;

    invoke-interface {p0}, Landroidx/lifecycle/e;->I()Lw/a;

    move-result-object p0

    const-string v0, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_17

    :cond_15
    sget-object p0, Lw/a$a;->b:Lw/a$a;

    :goto_17
    return-object p0
.end method
