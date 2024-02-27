.class Landroidx/core/view/m1$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/m1;

.field b:[Landroidx/core/graphics/b;


# direct methods
.method constructor <init>()V
    .registers 3

    new-instance v0, Landroidx/core/view/m1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/view/m1;-><init>(Landroidx/core/view/m1;)V

    invoke-direct {p0, v0}, Landroidx/core/view/m1$f;-><init>(Landroidx/core/view/m1;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/m1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/m1$f;->a:Landroidx/core/view/m1;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 6

    iget-object v0, p0, Landroidx/core/view/m1$f;->b:[Landroidx/core/graphics/b;

    if-eqz v0, :cond_58

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/core/view/m1$m;->b(I)I

    move-result v2

    aget-object v0, v0, v2

    iget-object v2, p0, Landroidx/core/view/m1$f;->b:[Landroidx/core/graphics/b;

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/core/view/m1$m;->b(I)I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_1c

    iget-object v2, p0, Landroidx/core/view/m1$f;->a:Landroidx/core/view/m1;

    invoke-virtual {v2, v3}, Landroidx/core/view/m1;->f(I)Landroidx/core/graphics/b;

    move-result-object v2

    :cond_1c
    if-nez v0, :cond_24

    iget-object v0, p0, Landroidx/core/view/m1$f;->a:Landroidx/core/view/m1;

    invoke-virtual {v0, v1}, Landroidx/core/view/m1;->f(I)Landroidx/core/graphics/b;

    move-result-object v0

    :cond_24
    invoke-static {v0, v2}, Landroidx/core/graphics/b;->a(Landroidx/core/graphics/b;Landroidx/core/graphics/b;)Landroidx/core/graphics/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/m1$f;->f(Landroidx/core/graphics/b;)V

    iget-object v0, p0, Landroidx/core/view/m1$f;->b:[Landroidx/core/graphics/b;

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/core/view/m1$m;->b(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3a

    invoke-virtual {p0, v0}, Landroidx/core/view/m1$f;->e(Landroidx/core/graphics/b;)V

    :cond_3a
    iget-object v0, p0, Landroidx/core/view/m1$f;->b:[Landroidx/core/graphics/b;

    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/core/view/m1$m;->b(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_49

    invoke-virtual {p0, v0}, Landroidx/core/view/m1$f;->c(Landroidx/core/graphics/b;)V

    :cond_49
    iget-object v0, p0, Landroidx/core/view/m1$f;->b:[Landroidx/core/graphics/b;

    const/16 v1, 0x40

    invoke-static {v1}, Landroidx/core/view/m1$m;->b(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_58

    invoke-virtual {p0, v0}, Landroidx/core/view/m1$f;->g(Landroidx/core/graphics/b;)V

    :cond_58
    return-void
.end method

.method b()Landroidx/core/view/m1;
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method c(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method d(Landroidx/core/graphics/b;)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method e(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method

.method f(Landroidx/core/graphics/b;)V
    .registers 2

    const/4 p0, 0x0

    throw p0
.end method

.method g(Landroidx/core/graphics/b;)V
    .registers 2

    return-void
.end method
