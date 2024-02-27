.class Landroidx/core/view/m1$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# static fields
.field static final b:Landroidx/core/view/m1;


# instance fields
.field final a:Landroidx/core/view/m1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/view/m1$b;

    invoke-direct {v0}, Landroidx/core/view/m1$b;-><init>()V

    invoke-virtual {v0}, Landroidx/core/view/m1$b;->a()Landroidx/core/view/m1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/m1;->a()Landroidx/core/view/m1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/m1;->b()Landroidx/core/view/m1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/m1;->c()Landroidx/core/view/m1;

    move-result-object v0

    sput-object v0, Landroidx/core/view/m1$l;->b:Landroidx/core/view/m1;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/m1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/m1$l;->a:Landroidx/core/view/m1;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/m1;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$l;->a:Landroidx/core/view/m1;

    return-object v0
.end method

.method b()Landroidx/core/view/m1;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$l;->a:Landroidx/core/view/m1;

    return-object v0
.end method

.method c()Landroidx/core/view/m1;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$l;->a:Landroidx/core/view/m1;

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method e(Landroidx/core/view/m1;)V
    .registers 2

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/core/view/m1$l;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Landroidx/core/view/m1$l;

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->o()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/m1$l;->o()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->n()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/m1$l;->n()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->i()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/m1$l;->i()Landroidx/core/graphics/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->f()Landroidx/core/view/c;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/m1$l;->f()Landroidx/core/view/c;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    return v0
.end method

.method f()Landroidx/core/view/c;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method g(I)Landroidx/core/graphics/b;
    .registers 2

    sget-object p1, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object p1
.end method

.method h()Landroidx/core/graphics/b;
    .registers 2

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->i()Landroidx/core/graphics/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->f()Landroidx/core/view/c;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Landroidx/core/graphics/b;
    .registers 2

    sget-object v0, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object v0
.end method

.method j()Landroidx/core/graphics/b;
    .registers 2

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method k()Landroidx/core/graphics/b;
    .registers 2

    sget-object v0, Landroidx/core/graphics/b;->e:Landroidx/core/graphics/b;

    return-object v0
.end method

.method l()Landroidx/core/graphics/b;
    .registers 2

    invoke-virtual {p0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method m(IIII)Landroidx/core/view/m1;
    .registers 5

    sget-object p1, Landroidx/core/view/m1$l;->b:Landroidx/core/view/m1;

    return-object p1
.end method

.method n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method o()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method p(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public q([Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method r(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method s(Landroidx/core/view/m1;)V
    .registers 2

    return-void
.end method

.method public t(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method
