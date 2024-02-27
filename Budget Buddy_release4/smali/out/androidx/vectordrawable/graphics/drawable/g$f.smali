.class abstract Landroidx/vectordrawable/graphics/drawable/g$f;
.super Landroidx/vectordrawable/graphics/drawable/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Landroidx/core/graphics/c$b;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/g$e;-><init>(Landroidx/vectordrawable/graphics/drawable/g$a;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/g$f;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/g$e;-><init>(Landroidx/vectordrawable/graphics/drawable/g$a;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->c:I

    iget-object v0, p1, Landroidx/vectordrawable/graphics/drawable/g$f;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->b:Ljava/lang/String;

    iget v0, p1, Landroidx/vectordrawable/graphics/drawable/g$f;->d:I

    iput v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->d:I

    iget-object p1, p1, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    invoke-static {p1}, Landroidx/core/graphics/c;->f([Landroidx/core/graphics/c$b;)[Landroidx/core/graphics/c$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/graphics/Path;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    if-eqz v0, :cond_a

    invoke-static {v0, p1}, Landroidx/core/graphics/c$b;->e([Landroidx/core/graphics/c$b;Landroid/graphics/Path;)V

    :cond_a
    return-void
.end method

.method public getPathData()[Landroidx/core/graphics/c$b;
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroidx/core/graphics/c$b;)V
    .registers 3

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/c;->b([Landroidx/core/graphics/c$b;[Landroidx/core/graphics/c$b;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Landroidx/core/graphics/c;->f([Landroidx/core/graphics/c$b;)[Landroidx/core/graphics/c$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    goto :goto_14

    :cond_f
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/g$f;->a:[Landroidx/core/graphics/c$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/c;->j([Landroidx/core/graphics/c$b;[Landroidx/core/graphics/c$b;)V

    :goto_14
    return-void
.end method
