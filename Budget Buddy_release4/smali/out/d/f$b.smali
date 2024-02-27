.class Ld/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f;->Q()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/f;


# direct methods
.method constructor <init>(Ld/f;)V
    .registers 2

    iput-object p1, p0, Ld/f$b;->a:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/m1;)Landroidx/core/view/m1;
    .registers 7

    invoke-virtual {p2}, Landroidx/core/view/m1;->k()I

    move-result v0

    iget-object v1, p0, Ld/f$b;->a:Ld/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ld/f;->L0(Landroidx/core/view/m1;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_1d

    invoke-virtual {p2}, Landroidx/core/view/m1;->i()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/m1;->j()I

    move-result v2

    invoke-virtual {p2}, Landroidx/core/view/m1;->h()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/view/m1;->p(IIII)Landroidx/core/view/m1;

    move-result-object p2

    :cond_1d
    invoke-static {p1, p2}, Landroidx/core/view/h0;->z(Landroid/view/View;Landroidx/core/view/m1;)Landroidx/core/view/m1;

    move-result-object p1

    return-object p1
.end method
