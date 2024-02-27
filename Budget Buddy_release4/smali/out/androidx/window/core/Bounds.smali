.class public final Landroidx/window/core/Bounds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/core/Bounds;->left:I

    iput p2, p0, Landroidx/window/core/Bounds;->top:I

    iput p3, p0, Landroidx/window/core/Bounds;->right:I

    iput p4, p0, Landroidx/window/core/Bounds;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 5

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/window/core/Bounds;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Landroidx/window/core/Bounds;

    if-nez p1, :cond_a

    const/4 v2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    if-eqz p1, :cond_37

    check-cast p1, Landroidx/window/core/Bounds;

    iget v1, p0, Landroidx/window/core/Bounds;->left:I

    iget v3, p1, Landroidx/window/core/Bounds;->left:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget v1, p0, Landroidx/window/core/Bounds;->top:I

    iget v3, p1, Landroidx/window/core/Bounds;->top:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget v1, p0, Landroidx/window/core/Bounds;->right:I

    iget v3, p1, Landroidx/window/core/Bounds;->right:I

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget v1, p0, Landroidx/window/core/Bounds;->bottom:I

    iget p1, p1, Landroidx/window/core/Bounds;->bottom:I

    if-eq v1, p1, :cond_36

    return v2

    :cond_36
    return v0

    :cond_37
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.window.core.Bounds"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getBottom()I
    .registers 2

    iget v0, p0, Landroidx/window/core/Bounds;->bottom:I

    return v0
.end method

.method public final getHeight()I
    .registers 3

    iget v0, p0, Landroidx/window/core/Bounds;->bottom:I

    iget v1, p0, Landroidx/window/core/Bounds;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLeft()I
    .registers 2

    iget v0, p0, Landroidx/window/core/Bounds;->left:I

    return v0
.end method

.method public final getRight()I
    .registers 2

    iget v0, p0, Landroidx/window/core/Bounds;->right:I

    return v0
.end method

.method public final getTop()I
    .registers 2

    iget v0, p0, Landroidx/window/core/Bounds;->top:I

    return v0
.end method

.method public final getWidth()I
    .registers 3

    iget v0, p0, Landroidx/window/core/Bounds;->right:I

    iget v1, p0, Landroidx/window/core/Bounds;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Landroidx/window/core/Bounds;->left:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/core/Bounds;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/core/Bounds;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/core/Bounds;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final isZero()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final toRect()Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroidx/window/core/Bounds;->left:I

    iget v2, p0, Landroidx/window/core/Bounds;->top:I

    iget v3, p0, Landroidx/window/core/Bounds;->right:I

    iget v4, p0, Landroidx/window/core/Bounds;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/core/Bounds;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " { ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/window/core/Bounds;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/window/core/Bounds;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/window/core/Bounds;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/window/core/Bounds;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
