.class public final Landroidx/core/view/m1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/m1$f;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    new-instance v0, Landroidx/core/view/m1$e;

    invoke-direct {v0}, Landroidx/core/view/m1$e;-><init>()V

    :goto_e
    iput-object v0, p0, Landroidx/core/view/m1$b;->a:Landroidx/core/view/m1$f;

    goto :goto_21

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1b

    new-instance v0, Landroidx/core/view/m1$d;

    invoke-direct {v0}, Landroidx/core/view/m1$d;-><init>()V

    goto :goto_e

    :cond_1b
    new-instance v0, Landroidx/core/view/m1$c;

    invoke-direct {v0}, Landroidx/core/view/m1$c;-><init>()V

    goto :goto_e

    :goto_21
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/m1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    new-instance v0, Landroidx/core/view/m1$e;

    invoke-direct {v0, p1}, Landroidx/core/view/m1$e;-><init>(Landroidx/core/view/m1;)V

    :goto_e
    iput-object v0, p0, Landroidx/core/view/m1$b;->a:Landroidx/core/view/m1$f;

    goto :goto_21

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1b

    new-instance v0, Landroidx/core/view/m1$d;

    invoke-direct {v0, p1}, Landroidx/core/view/m1$d;-><init>(Landroidx/core/view/m1;)V

    goto :goto_e

    :cond_1b
    new-instance v0, Landroidx/core/view/m1$c;

    invoke-direct {v0, p1}, Landroidx/core/view/m1$c;-><init>(Landroidx/core/view/m1;)V

    goto :goto_e

    :goto_21
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/m1;
    .registers 2

    iget-object v0, p0, Landroidx/core/view/m1$b;->a:Landroidx/core/view/m1$f;

    invoke-virtual {v0}, Landroidx/core/view/m1$f;->b()Landroidx/core/view/m1;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroidx/core/graphics/b;)Landroidx/core/view/m1$b;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1$b;->a:Landroidx/core/view/m1$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$f;->d(Landroidx/core/graphics/b;)V

    return-object p0
.end method

.method public c(Landroidx/core/graphics/b;)Landroidx/core/view/m1$b;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/m1$b;->a:Landroidx/core/view/m1$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/m1$f;->f(Landroidx/core/graphics/b;)V

    return-object p0
.end method
