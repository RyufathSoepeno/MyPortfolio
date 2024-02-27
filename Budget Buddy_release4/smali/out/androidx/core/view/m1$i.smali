.class Landroidx/core/view/m1$i;
.super Landroidx/core/view/m1$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/view/m1$h;-><init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/m1;Landroidx/core/view/m1$i;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/core/view/m1$h;-><init>(Landroidx/core/view/m1;Landroidx/core/view/m1$h;)V

    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/m1;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/o1;->a(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/m1;->v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/core/view/m1$i;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroidx/core/view/m1$i;

    iget-object v1, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    iget-object v3, p1, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroidx/core/view/m1$g;->g:Landroidx/core/graphics/b;

    iget-object p1, p1, Landroidx/core/view/m1$g;->g:Landroidx/core/graphics/b;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method f()Landroidx/core/view/c;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/n1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/c;->e(Landroid/view/DisplayCutout;)Landroidx/core/view/c;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
