.class Landroidx/core/view/h0$d;
.super Landroidx/core/view/h0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/h0;->a()Landroidx/core/view/h0$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/core/view/h0$f<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/h0$f;-><init>(ILjava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/core/view/h0$d;->e(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method e(Landroid/view/View;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p1}, Landroidx/core/view/h0$n;->c(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
