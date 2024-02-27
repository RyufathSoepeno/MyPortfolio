.class public Landroidx/core/view/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/m1$a;,
        Landroidx/core/view/m1$n;,
        Landroidx/core/view/m1$m;,
        Landroidx/core/view/m1$e;,
        Landroidx/core/view/m1$d;,
        Landroidx/core/view/m1$c;,
        Landroidx/core/view/m1$f;,
        Landroidx/core/view/m1$b;,
        Landroidx/core/view/m1$k;,
        Landroidx/core/view/m1$j;,
        Landroidx/core/view/m1$i;,
        Landroidx/core/view/m1$h;,
        Landroidx/core/view/m1$g;,
        Landroidx/core/view/m1$l;
    }
.end annotation


# static fields
.field public static final b:Landroidx/core/view/m1;


# instance fields
.field private final a:Landroidx/core/view/m1$l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    sget-object v0, Landroidx/core/view/m1$k;->q:Landroidx/core/view/m1;

    goto :goto_b

    :cond_9
    sget-object v0, Landroidx/core/view/m1$l;->b:Landroidx/core/view/m1;

    :goto_b
    sput-object v0, Landroidx/core/view/m1;->b:Landroidx/core/view/m1;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    new-instance v0, Landroidx/core/view/m1$k;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/m1$k;-><init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V

    :goto_e
    iput-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    goto :goto_2b

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1b

    new-instance v0, Landroidx/core/view/m1$j;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/m1$j;-><init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V

    goto :goto_e

    :cond_1b
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_25

    new-instance v0, Landroidx/core/view/m1$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/m1$i;-><init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V

    goto :goto_e

    :cond_25
    new-instance v0, Landroidx/core/view/m1$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/m1$h;-><init>(Landroidx/core/view/m1;Landroid/view/WindowInsets;)V

    goto :goto_e

    :goto_2b
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/m1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_62

    iget-object p1, p1, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1c

    instance-of v1, p1, Landroidx/core/view/m1$k;

    if-eqz v1, :cond_1c

    new-instance v0, Landroidx/core/view/m1$k;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/m1$k;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/m1$k;-><init>(Landroidx/core/view/m1;Landroidx/core/view/m1$k;)V

    :goto_19
    iput-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    goto :goto_5e

    :cond_1c
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2d

    instance-of v1, p1, Landroidx/core/view/m1$j;

    if-eqz v1, :cond_2d

    new-instance v0, Landroidx/core/view/m1$j;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/m1$j;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/m1$j;-><init>(Landroidx/core/view/m1;Landroidx/core/view/m1$j;)V

    goto :goto_19

    :cond_2d
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3e

    instance-of v0, p1, Landroidx/core/view/m1$i;

    if-eqz v0, :cond_3e

    new-instance v0, Landroidx/core/view/m1$i;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/m1$i;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/m1$i;-><init>(Landroidx/core/view/m1;Landroidx/core/view/m1$i;)V

    goto :goto_19

    :cond_3e
    instance-of v0, p1, Landroidx/core/view/m1$h;

    if-eqz v0, :cond_4b

    new-instance v0, Landroidx/core/view/m1$h;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/m1$h;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/m1$h;-><init>(Landroidx/core/view/m1;Landroidx/core/view/m1$h;)V

    goto :goto_19

    :cond_4b
    instance-of v0, p1, Landroidx/core/view/m1$g;

    if-eqz v0, :cond_58

    new-instance v0, Landroidx/core/view/m1$g;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/m1$g;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/m1$g;-><init>(Landroidx/core/view/m1;Landroidx/core/view/m1$g;)V

    goto :goto_19

    :cond_58
    new-instance v0, Landroidx/core/view/m1$l;

    invoke-direct {v0, p0}, Landroidx/core/view/m1$l;-><init>(Landroidx/core/view/m1;)V

    goto :goto_19

    :goto_5e
    invoke-virtual {p1, p0}, Landroidx/core/view/m1$l;->e(Landroidx/core/view/m1;)V

    goto :goto_69

    :cond_62
    new-instance p1, Landroidx/core/view/m1$l;

    invoke-direct {p1, p0}, Landroidx/core/view/m1$l;-><init>(Landroidx/core/view/m1;)V

    iput-object p1, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    :goto_69
    return-void
.end method

.method static m(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;
    .registers 10

    iget v0, p0, Landroidx/core/graphics/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Landroidx/core/graphics/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroidx/core/graphics/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroidx/core/graphics/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_26

    if-ne v2, p2, :cond_26

    if-ne v3, p3, :cond_26

    if-ne v1, p4, :cond_26

    return-object p0

    :cond_26
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/view/WindowInsets;)Landroidx/core/view/m1;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/m1;->w(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/m1;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/m1;
    .registers 3

    new-instance v0, Landroidx/core/view/m1;

    invoke-static {p0}, Landroidx/core/util/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/view/m1;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_21

    invoke-static {p1}, Landroidx/core/view/h0;->v(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-static {p1}, Landroidx/core/view/h0;->p(Landroid/view/View;)Landroidx/core/view/m1;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/m1;->s(Landroidx/core/view/m1;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/m1;->d(Landroid/view/View;)V

    :cond_21
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/core/view/m1;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->a()Landroidx/core/view/m1;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/core/view/m1;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->b()Landroidx/core/view/m1;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroidx/core/view/m1;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->c()Landroidx/core/view/m1;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Landroidx/core/view/c;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->f()Landroidx/core/view/c;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Landroidx/core/view/m1;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Landroidx/core/view/m1;

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    iget-object p1, p1, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-static {v0, p1}, Landroidx/core/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Landroidx/core/graphics/b;
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$l;->g(I)Landroidx/core/graphics/b;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroidx/core/graphics/b;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->i()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->d:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroidx/core/view/m1$l;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public i()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->a:I

    return v0
.end method

.method public j()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->c:I

    return v0
.end method

.method public k()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->k()Landroidx/core/graphics/b;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/b;->b:I

    return v0
.end method

.method public l(IIII)Landroidx/core/view/m1;
    .registers 6

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/m1$l;->m(IIII)Landroidx/core/view/m1;

    move-result-object p1

    return-object p1
.end method

.method public n()Z
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0}, Landroidx/core/view/m1$l;->n()Z

    move-result v0

    return v0
.end method

.method public o(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$l;->p(I)Z

    move-result p1

    return p1
.end method

.method public p(IIII)Landroidx/core/view/m1;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/core/view/m1$b;

    invoke-direct {v0, p0}, Landroidx/core/view/m1$b;-><init>(Landroidx/core/view/m1;)V

    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/b;->b(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$b;->c(Landroidx/core/graphics/b;)Landroidx/core/view/m1$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/m1$b;->a()Landroidx/core/view/m1;

    move-result-object p1

    return-object p1
.end method

.method q([Landroidx/core/graphics/b;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$l;->q([Landroidx/core/graphics/b;)V

    return-void
.end method

.method r(Landroidx/core/graphics/b;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$l;->r(Landroidx/core/graphics/b;)V

    return-void
.end method

.method s(Landroidx/core/view/m1;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$l;->s(Landroidx/core/view/m1;)V

    return-void
.end method

.method t(Landroidx/core/graphics/b;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$l;->t(Landroidx/core/graphics/b;)V

    return-void
.end method

.method public u()Landroid/view/WindowInsets;
    .registers 3

    iget-object v0, p0, Landroidx/core/view/m1;->a:Landroidx/core/view/m1$l;

    instance-of v1, v0, Landroidx/core/view/m1$g;

    if-eqz v1, :cond_b

    check-cast v0, Landroidx/core/view/m1$g;

    iget-object v0, v0, Landroidx/core/view/m1$g;->c:Landroid/view/WindowInsets;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
