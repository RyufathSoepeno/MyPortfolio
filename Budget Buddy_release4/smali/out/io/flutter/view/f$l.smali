.class Lio/flutter/view/f$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# instance fields
.field private A:Lio/flutter/view/f$p;

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:[F

.field private Q:Lio/flutter/view/f$l;

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/f$l;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/f$l;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/f$h;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lio/flutter/view/f$h;

.field private V:Lio/flutter/view/f$h;

.field private W:Z

.field private X:[F

.field private Y:Z

.field private Z:[F

.field final a:Lio/flutter/view/f;

.field private a0:Landroid/graphics/Rect;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/f$n;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/f$n;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/f$n;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/f$n;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/f$n;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method constructor <init>(Lio/flutter/view/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/f$l;->b:I

    iput v0, p0, Lio/flutter/view/f$l;->z:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/view/f$l;->B:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/f$l;->R:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/f$l;->S:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/f$l;->W:Z

    iput-boolean v0, p0, Lio/flutter/view/f$l;->Y:Z

    iput-object p1, p0, Lio/flutter/view/f$l;->a:Lio/flutter/view/f;

    return-void
.end method

.method static synthetic A(Lio/flutter/view/f$l;)Ljava/lang/CharSequence;
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f$l;->r0()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static A0(Lio/flutter/view/f$l;Lz0/e;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/view/f$l;",
            "Lz0/e<",
            "Lio/flutter/view/f$l;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_a

    invoke-direct {p0, p1}, Lio/flutter/view/f$l;->j0(Lz0/e;)Lio/flutter/view/f$l;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static synthetic B(Lio/flutter/view/f$l;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->y:Ljava/lang/String;

    return-object p0
.end method

.method private B0([F[F[F)V
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 p2, 0x3

    aget p3, p1, p2

    const/4 v0, 0x0

    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 p3, 0x0

    aput p3, p1, p2

    return-void
.end method

.method static synthetic C(Lio/flutter/view/f$l;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->T:Ljava/util/List;

    return-object p0
.end method

.method private C0([FLjava/util/Set;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/Set<",
            "Lio/flutter/view/f$l;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lio/flutter/view/f$l;->Y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    const/4 p3, 0x1

    :cond_9
    if-eqz p3, :cond_c3

    iget-object v0, p0, Lio/flutter/view/f$l;->Z:[F

    const/16 v2, 0x10

    if-nez v0, :cond_15

    new-array v0, v2, [F

    iput-object v0, p0, Lio/flutter/view/f$l;->Z:[F

    :cond_15
    iget-object v0, p0, Lio/flutter/view/f$l;->P:[F

    if-nez v0, :cond_1d

    new-array v0, v2, [F

    iput-object v0, p0, Lio/flutter/view/f$l;->P:[F

    :cond_1d
    iget-object v2, p0, Lio/flutter/view/f$l;->Z:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lio/flutter/view/f$l;->P:[F

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p1, 0x4

    new-array v0, p1, [F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    new-array v2, p1, [F

    new-array v3, p1, [F

    new-array v4, p1, [F

    new-array p1, p1, [F

    iget v5, p0, Lio/flutter/view/f$l;->L:F

    const/4 v6, 0x0

    aput v5, v0, v6

    iget v5, p0, Lio/flutter/view/f$l;->M:F

    aput v5, v0, v1

    iget-object v5, p0, Lio/flutter/view/f$l;->Z:[F

    invoke-direct {p0, v2, v5, v0}, Lio/flutter/view/f$l;->B0([F[F[F)V

    iget v5, p0, Lio/flutter/view/f$l;->N:F

    aput v5, v0, v6

    iget v5, p0, Lio/flutter/view/f$l;->M:F

    aput v5, v0, v1

    iget-object v5, p0, Lio/flutter/view/f$l;->Z:[F

    invoke-direct {p0, v3, v5, v0}, Lio/flutter/view/f$l;->B0([F[F[F)V

    iget v5, p0, Lio/flutter/view/f$l;->N:F

    aput v5, v0, v6

    iget v5, p0, Lio/flutter/view/f$l;->O:F

    aput v5, v0, v1

    iget-object v5, p0, Lio/flutter/view/f$l;->Z:[F

    invoke-direct {p0, v4, v5, v0}, Lio/flutter/view/f$l;->B0([F[F[F)V

    iget v5, p0, Lio/flutter/view/f$l;->L:F

    aput v5, v0, v6

    iget v5, p0, Lio/flutter/view/f$l;->O:F

    aput v5, v0, v1

    iget-object v5, p0, Lio/flutter/view/f$l;->Z:[F

    invoke-direct {p0, p1, v5, v0}, Lio/flutter/view/f$l;->B0([F[F[F)V

    iget-object v0, p0, Lio/flutter/view/f$l;->a0:Landroid/graphics/Rect;

    if-nez v0, :cond_7c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/flutter/view/f$l;->a0:Landroid/graphics/Rect;

    :cond_7c
    iget-object v0, p0, Lio/flutter/view/f$l;->a0:Landroid/graphics/Rect;

    aget v5, v2, v6

    aget v7, v3, v6

    aget v8, v4, v6

    aget v9, p1, v6

    invoke-direct {p0, v5, v7, v8, v9}, Lio/flutter/view/f$l;->z0(FFFF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aget v7, v2, v1

    aget v8, v3, v1

    aget v9, v4, v1

    aget v10, p1, v1

    invoke-direct {p0, v7, v8, v9, v10}, Lio/flutter/view/f$l;->z0(FFFF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aget v8, v2, v6

    aget v9, v3, v6

    aget v10, v4, v6

    aget v11, p1, v6

    invoke-direct {p0, v8, v9, v10, v11}, Lio/flutter/view/f$l;->y0(FFFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aget v2, v2, v1

    aget v3, v3, v1

    aget v4, v4, v1

    aget p1, p1, v1

    invoke-direct {p0, v2, v3, v4, p1}, Lio/flutter/view/f$l;->y0(FFFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, v5, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p0, Lio/flutter/view/f$l;->Y:Z

    :cond_c3
    const/4 p1, -0x1

    iget-object v0, p0, Lio/flutter/view/f$l;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ca
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/f$l;

    iput p1, v1, Lio/flutter/view/f$l;->z:I

    iget p1, v1, Lio/flutter/view/f$l;->b:I

    iget-object v2, p0, Lio/flutter/view/f$l;->Z:[F

    invoke-direct {v1, v2, p2, p3}, Lio/flutter/view/f$l;->C0([FLjava/util/Set;Z)V

    goto :goto_ca

    :cond_e0
    return-void
.end method

.method static synthetic D(Lio/flutter/view/f$l;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->R:Ljava/util/List;

    return-object p0
.end method

.method private D0(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .registers 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/f$l;->B:Z

    iget-object v1, p0, Lio/flutter/view/f$l;->q:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/f$l;->J:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/view/f$l;->o:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/f$l;->K:Ljava/lang/String;

    iget v1, p0, Lio/flutter/view/f$l;->c:I

    iput v1, p0, Lio/flutter/view/f$l;->C:I

    iget v1, p0, Lio/flutter/view/f$l;->d:I

    iput v1, p0, Lio/flutter/view/f$l;->D:I

    iget v1, p0, Lio/flutter/view/f$l;->g:I

    iput v1, p0, Lio/flutter/view/f$l;->E:I

    iget v1, p0, Lio/flutter/view/f$l;->h:I

    iput v1, p0, Lio/flutter/view/f$l;->F:I

    iget v1, p0, Lio/flutter/view/f$l;->l:F

    iput v1, p0, Lio/flutter/view/f$l;->G:F

    iget v1, p0, Lio/flutter/view/f$l;->m:F

    iput v1, p0, Lio/flutter/view/f$l;->H:F

    iget v1, p0, Lio/flutter/view/f$l;->n:F

    iput v1, p0, Lio/flutter/view/f$l;->I:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->d:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->e:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->f:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->g:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->h:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->i:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->j:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->k:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->l:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->m:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/f$l;->n:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_79

    move-object v1, v3

    goto :goto_7b

    :cond_79
    aget-object v1, p2, v1

    :goto_7b
    iput-object v1, p0, Lio/flutter/view/f$l;->o:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lio/flutter/view/f$l;->o0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/f$l;->p:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_8b

    move-object v1, v3

    goto :goto_8d

    :cond_8b
    aget-object v1, p2, v1

    :goto_8d
    iput-object v1, p0, Lio/flutter/view/f$l;->q:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lio/flutter/view/f$l;->o0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/f$l;->r:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_9d

    move-object v1, v3

    goto :goto_9f

    :cond_9d
    aget-object v1, p2, v1

    :goto_9f
    iput-object v1, p0, Lio/flutter/view/f$l;->s:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lio/flutter/view/f$l;->o0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/f$l;->t:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_af

    move-object v1, v3

    goto :goto_b1

    :cond_af
    aget-object v1, p2, v1

    :goto_b1
    iput-object v1, p0, Lio/flutter/view/f$l;->u:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lio/flutter/view/f$l;->o0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/f$l;->v:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_c1

    move-object v1, v3

    goto :goto_c3

    :cond_c1
    aget-object v1, p2, v1

    :goto_c3
    iput-object v1, p0, Lio/flutter/view/f$l;->w:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lio/flutter/view/f$l;->o0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/flutter/view/f$l;->x:Ljava/util/List;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    if-ne p3, v2, :cond_d3

    move-object p2, v3

    goto :goto_d5

    :cond_d3
    aget-object p2, p2, p3

    :goto_d5
    iput-object p2, p0, Lio/flutter/view/f$l;->y:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    invoke-static {p2}, Lio/flutter/view/f$p;->a(I)Lio/flutter/view/f$p;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/view/f$l;->A:Lio/flutter/view/f$p;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/f$l;->L:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/f$l;->M:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/f$l;->N:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/f$l;->O:F

    iget-object p2, p0, Lio/flutter/view/f$l;->P:[F

    const/16 p3, 0x10

    if-nez p2, :cond_103

    new-array p2, p3, [F

    iput-object p2, p0, Lio/flutter/view/f$l;->P:[F

    :cond_103
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_105
    if-ge v1, p3, :cond_112

    iget-object v2, p0, Lio/flutter/view/f$l;->P:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_105

    :cond_112
    iput-boolean v0, p0, Lio/flutter/view/f$l;->W:Z

    iput-boolean v0, p0, Lio/flutter/view/f$l;->Y:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/f$l;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/flutter/view/f$l;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_125
    if-ge v0, p3, :cond_13b

    iget-object v1, p0, Lio/flutter/view/f$l;->a:Lio/flutter/view/f;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1, v2}, Lio/flutter/view/f;->n(Lio/flutter/view/f;I)Lio/flutter/view/f$l;

    move-result-object v1

    iput-object p0, v1, Lio/flutter/view/f$l;->Q:Lio/flutter/view/f$l;

    iget-object v2, p0, Lio/flutter/view/f$l;->R:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    :cond_13b
    const/4 v0, 0x0

    :goto_13c
    if-ge v0, p3, :cond_152

    iget-object v1, p0, Lio/flutter/view/f$l;->a:Lio/flutter/view/f;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1, v2}, Lio/flutter/view/f;->n(Lio/flutter/view/f;I)Lio/flutter/view/f$l;

    move-result-object v1

    iput-object p0, v1, Lio/flutter/view/f$l;->Q:Lio/flutter/view/f$l;

    iget-object v2, p0, Lio/flutter/view/f$l;->S:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13c

    :cond_152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p3

    if-nez p3, :cond_15b

    iput-object v3, p0, Lio/flutter/view/f$l;->T:Ljava/util/List;

    goto :goto_19d

    :cond_15b
    iget-object v0, p0, Lio/flutter/view/f$l;->T:Ljava/util/List;

    if-nez v0, :cond_167

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/view/f$l;->T:Ljava/util/List;

    goto :goto_16a

    :cond_167
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_16a
    if-ge p2, p3, :cond_19d

    iget-object v0, p0, Lio/flutter/view/f$l;->a:Lio/flutter/view/f;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v0, v1}, Lio/flutter/view/f;->o(Lio/flutter/view/f;I)Lio/flutter/view/f$h;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/view/f$h;->i(Lio/flutter/view/f$h;)I

    move-result v1

    sget-object v2, Lio/flutter/view/f$g;->f:Lio/flutter/view/f$g;

    iget v2, v2, Lio/flutter/view/f$g;->e:I

    if-ne v1, v2, :cond_183

    iput-object v0, p0, Lio/flutter/view/f$l;->U:Lio/flutter/view/f$h;

    goto :goto_195

    :cond_183
    invoke-static {v0}, Lio/flutter/view/f$h;->i(Lio/flutter/view/f$h;)I

    move-result v1

    sget-object v2, Lio/flutter/view/f$g;->g:Lio/flutter/view/f$g;

    iget v2, v2, Lio/flutter/view/f$g;->e:I

    if-ne v1, v2, :cond_190

    iput-object v0, p0, Lio/flutter/view/f$l;->V:Lio/flutter/view/f$h;

    goto :goto_195

    :cond_190
    iget-object v1, p0, Lio/flutter/view/f$l;->T:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_195
    iget-object v1, p0, Lio/flutter/view/f$l;->T:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_16a

    :cond_19d
    :goto_19d
    return-void
.end method

.method static synthetic E(Lio/flutter/view/f$l;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F(Lio/flutter/view/f$l;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lio/flutter/view/f$l;->r:Ljava/util/List;

    return-object p1
.end method

.method static synthetic G(Lio/flutter/view/f$l;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->t:Ljava/util/List;

    return-object p0
.end method

.method static synthetic H(Lio/flutter/view/f$l;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I(Lio/flutter/view/f$l;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->v:Ljava/util/List;

    return-object p0
.end method

.method static synthetic J(Lio/flutter/view/f$l;[FZ)Lio/flutter/view/f$l;
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/view/f$l;->w0([FZ)Lio/flutter/view/f$l;

    move-result-object p0

    return-object p0
.end method

.method static synthetic K(Lio/flutter/view/f$l;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/view/f$l;->D0(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic L(Lio/flutter/view/f$l;)Z
    .registers 1

    iget-boolean p0, p0, Lio/flutter/view/f$l;->B:Z

    return p0
.end method

.method static synthetic M(Lio/flutter/view/f$l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/view/f$l;->Y:Z

    return p1
.end method

.method static synthetic N(Lio/flutter/view/f$l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/view/f$l;->W:Z

    return p1
.end method

.method static synthetic O(Lio/flutter/view/f$l;[FLjava/util/Set;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/view/f$l;->C0([FLjava/util/Set;Z)V

    return-void
.end method

.method static synthetic P(Lio/flutter/view/f$l;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f$l;->e0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic Q(Lio/flutter/view/f$l;)Z
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f$l;->h0()Z

    move-result p0

    return p0
.end method

.method static synthetic R(Lio/flutter/view/f$l;)F
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->l:F

    return p0
.end method

.method static synthetic S(Lio/flutter/view/f$l;)F
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->m:F

    return p0
.end method

.method static synthetic T(Lio/flutter/view/f$l;)F
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->n:F

    return p0
.end method

.method static synthetic U(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f$l;->s0(Lio/flutter/view/f$g;)Z

    move-result p0

    return p0
.end method

.method static synthetic V(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->k:I

    return p0
.end method

.method static synthetic W(Lio/flutter/view/f$l;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->S:Ljava/util/List;

    return-object p0
.end method

.method static synthetic X(Lio/flutter/view/f$l;)Z
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f$l;->g0()Z

    move-result p0

    return p0
.end method

.method static synthetic Y(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f$l;->t0(Lio/flutter/view/f$i;)Z

    move-result p0

    return p0
.end method

.method static synthetic Z(Lio/flutter/view/f$l;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->b:I

    return p0
.end method

.method static synthetic a0(Lio/flutter/view/f$l;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->J:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/view/f$l;I)I
    .registers 2

    iput p1, p0, Lio/flutter/view/f$l;->b:I

    return p1
.end method

.method static synthetic b0(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->E:I

    return p0
.end method

.method static synthetic c(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->j:I

    return p0
.end method

.method static synthetic c0(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->F:I

    return p0
.end method

.method static synthetic d(Lio/flutter/view/f$l;Lz0/e;)Z
    .registers 2

    invoke-static {p0, p1}, Lio/flutter/view/f$l;->A0(Lio/flutter/view/f$l;Lz0/e;)Z

    move-result p0

    return p0
.end method

.method static synthetic d0(Lio/flutter/view/f$l;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f$l;->n0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->i:I

    return p0
.end method

.method private e0(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/view/f$l;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lio/flutter/view/f$i;->q:Lio/flutter/view/f$i;

    invoke-direct {p0, v0}, Lio/flutter/view/f$l;->v0(Lio/flutter/view/f$i;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lio/flutter/view/f$l;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/f$l;

    invoke-direct {v1, p1}, Lio/flutter/view/f$l;->e0(Ljava/util/List;)V

    goto :goto_11

    :cond_21
    return-void
.end method

.method static synthetic f(Lio/flutter/view/f$l;)Landroid/graphics/Rect;
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f$l;->k0()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private f0(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/flutter/view/f$n;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_56

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/f$n;

    sget-object v1, Lio/flutter/view/f$e;->a:[I

    iget-object v2, p2, Lio/flutter/view/f$n;->c:Lio/flutter/view/f$o;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_43

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2d

    goto :goto_f

    :cond_2d
    move-object v1, p2

    check-cast v1, Lio/flutter/view/f$j;

    iget-object v1, v1, Lio/flutter/view/f$j;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Landroid/text/style/LocaleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    iget v1, p2, Lio/flutter/view/f$n;->a:I

    iget p2, p2, Lio/flutter/view/f$n;->b:I

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    :cond_43
    new-instance v1, Landroid/text/style/TtsSpan$Builder;

    const-string v2, "android.type.verbatim"

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget v2, p2, Lio/flutter/view/f$n;->a:I

    iget p2, p2, Lio/flutter/view/f$n;->b:I

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_f

    :cond_56
    return-object v0
.end method

.method static synthetic g(Lio/flutter/view/f$l;)Z
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f$l;->x0()Z

    move-result p0

    return p0
.end method

.method private g0()Z
    .registers 4

    iget-object v0, p0, Lio/flutter/view/f$l;->o:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v2, p0, Lio/flutter/view/f$l;->K:Ljava/lang/String;

    if-nez v2, :cond_a

    return v1

    :cond_a
    if-eqz v0, :cond_16

    iget-object v2, p0, Lio/flutter/view/f$l;->K:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method static synthetic h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f$l;->v0(Lio/flutter/view/f$i;)Z

    move-result p0

    return p0
.end method

.method private h0()Z
    .registers 3

    iget v0, p0, Lio/flutter/view/f$l;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lio/flutter/view/f$l;->G:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lio/flutter/view/f$l;->G:F

    iget v1, p0, Lio/flutter/view/f$l;->l:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method static synthetic i(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->g:I

    return p0
.end method

.method private i0()V
    .registers 4

    iget-boolean v0, p0, Lio/flutter/view/f$l;->W:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/view/f$l;->W:Z

    iget-object v1, p0, Lio/flutter/view/f$l;->X:[F

    if-nez v1, :cond_12

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lio/flutter/view/f$l;->X:[F

    :cond_12
    iget-object v1, p0, Lio/flutter/view/f$l;->X:[F

    iget-object v2, p0, Lio/flutter/view/f$l;->P:[F

    invoke-static {v1, v0, v2, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lio/flutter/view/f$l;->X:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_22
    return-void
.end method

.method static synthetic j(Lio/flutter/view/f$l;I)I
    .registers 2

    iput p1, p0, Lio/flutter/view/f$l;->g:I

    return p1
.end method

.method private j0(Lz0/e;)Lio/flutter/view/f$l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/e<",
            "Lio/flutter/view/f$l;",
            ">;)",
            "Lio/flutter/view/f$l;"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/view/f$l;->Q:Lio/flutter/view/f$l;

    :goto_2
    if-eqz v0, :cond_e

    invoke-interface {p1, v0}, Lz0/e;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    iget-object v0, v0, Lio/flutter/view/f$l;->Q:Lio/flutter/view/f$l;

    goto :goto_2

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic k(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->h:I

    return p0
.end method

.method private k0()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lio/flutter/view/f$l;->a0:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic l(Lio/flutter/view/f$l;I)I
    .registers 2

    iput p1, p0, Lio/flutter/view/f$l;->h:I

    return p1
.end method

.method private l0()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lio/flutter/view/f$l;->w:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/view/f$l;->x:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lio/flutter/view/f$l;->f0(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lio/flutter/view/f$l;I)I
    .registers 3

    iget v0, p0, Lio/flutter/view/f$l;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/f$l;->h:I

    return v0
.end method

.method private m0()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lio/flutter/view/f$l;->o:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/view/f$l;->p:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lio/flutter/view/f$l;->f0(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lio/flutter/view/f$l;I)I
    .registers 3

    iget v0, p0, Lio/flutter/view/f$l;->h:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/flutter/view/f$l;->h:I

    return v0
.end method

.method private n0()Ljava/lang/String;
    .registers 4

    sget-object v0, Lio/flutter/view/f$i;->r:Lio/flutter/view/f$i;

    invoke-direct {p0, v0}, Lio/flutter/view/f$l;->v0(Lio/flutter/view/f$i;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/flutter/view/f$l;->o:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lio/flutter/view/f$l;->o:Ljava/lang/String;

    return-object v0

    :cond_15
    iget-object v0, p0, Lio/flutter/view/f$l;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/f$l;

    invoke-direct {v1}, Lio/flutter/view/f$l;->n0()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    return-object v1

    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f$l;->u0(Lio/flutter/view/f$g;)Z

    move-result p0

    return p0
.end method

.method private o0(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lio/flutter/view/f$n;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return-object v1

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_6b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {}, Lio/flutter/view/f$o;->values()[Lio/flutter/view/f$o;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aget-object v6, v6, v7

    sget-object v7, Lio/flutter/view/f$e;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_57

    const/4 v8, 0x2

    if-eq v7, v8, :cond_32

    goto :goto_68

    :cond_32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aget-object v7, p2, v7

    new-instance v8, Lio/flutter/view/f$j;

    invoke-direct {v8, v1}, Lio/flutter/view/f$j;-><init>(Lio/flutter/view/f$a;)V

    iput v4, v8, Lio/flutter/view/f$n;->a:I

    iput v5, v8, Lio/flutter/view/f$n;->b:I

    iput-object v6, v8, Lio/flutter/view/f$n;->c:Lio/flutter/view/f$o;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lio/flutter/view/f$j;->d:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    new-instance v7, Lio/flutter/view/f$m;

    invoke-direct {v7, v1}, Lio/flutter/view/f$m;-><init>(Lio/flutter/view/f$a;)V

    iput v4, v7, Lio/flutter/view/f$n;->a:I

    iput v5, v7, Lio/flutter/view/f$n;->b:I

    iput-object v6, v7, Lio/flutter/view/f$n;->c:Lio/flutter/view/f$o;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_6b
    return-object v2
.end method

.method static synthetic p(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->e:I

    return p0
.end method

.method private p0()Ljava/lang/CharSequence;
    .registers 9

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-direct {p0}, Lio/flutter/view/f$l;->m0()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lio/flutter/view/f$l;->l0()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v0, :cond_3c

    aget-object v6, v1, v5

    if-eqz v6, :cond_39

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_39

    if-eqz v2, :cond_38

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_28

    goto :goto_38

    :cond_28
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v2, v7, v3

    const-string v2, ", "

    aput-object v2, v7, v4

    aput-object v6, v7, v0

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_39

    :cond_38
    :goto_38
    move-object v2, v6

    :cond_39
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_3c
    return-object v2
.end method

.method static synthetic q(Lio/flutter/view/f$l;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->q:Ljava/lang/String;

    return-object p0
.end method

.method private q0()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lio/flutter/view/f$l;->q:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/view/f$l;->r:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lio/flutter/view/f$l;->f0(Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lio/flutter/view/f$l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lio/flutter/view/f$l;->q:Ljava/lang/String;

    return-object p1
.end method

.method private r0()Ljava/lang/CharSequence;
    .registers 10

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-direct {p0}, Lio/flutter/view/f$l;->q0()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lio/flutter/view/f$l;->m0()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {p0}, Lio/flutter/view/f$l;->l0()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v0, :cond_42

    aget-object v7, v1, v6

    if-eqz v7, :cond_3f

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3f

    if-eqz v2, :cond_3e

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2f

    goto :goto_3e

    :cond_2f
    new-array v8, v0, [Ljava/lang/CharSequence;

    aput-object v2, v8, v3

    const-string v2, ", "

    aput-object v2, v8, v4

    aput-object v7, v8, v5

    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3f

    :cond_3e
    :goto_3e
    move-object v2, v7

    :cond_3f
    :goto_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_42
    return-object v2
.end method

.method static synthetic s(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->f:I

    return p0
.end method

.method private s0(Lio/flutter/view/f$g;)Z
    .registers 3

    iget v0, p0, Lio/flutter/view/f$l;->D:I

    iget p1, p1, Lio/flutter/view/f$g;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method static synthetic t(Lio/flutter/view/f$l;)Lio/flutter/view/f$l;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->Q:Lio/flutter/view/f$l;

    return-object p0
.end method

.method private t0(Lio/flutter/view/f$i;)Z
    .registers 3

    iget v0, p0, Lio/flutter/view/f$l;->C:I

    iget p1, p1, Lio/flutter/view/f$i;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method static synthetic u(Lio/flutter/view/f$l;Lio/flutter/view/f$l;)Lio/flutter/view/f$l;
    .registers 2

    iput-object p1, p0, Lio/flutter/view/f$l;->Q:Lio/flutter/view/f$l;

    return-object p1
.end method

.method private u0(Lio/flutter/view/f$g;)Z
    .registers 3

    iget v0, p0, Lio/flutter/view/f$l;->d:I

    iget p1, p1, Lio/flutter/view/f$g;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method static synthetic v(Lio/flutter/view/f$l;)I
    .registers 1

    iget p0, p0, Lio/flutter/view/f$l;->z:I

    return p0
.end method

.method private v0(Lio/flutter/view/f$i;)Z
    .registers 3

    iget v0, p0, Lio/flutter/view/f$l;->c:I

    iget p1, p1, Lio/flutter/view/f$i;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method static synthetic w(Lio/flutter/view/f$l;)Lio/flutter/view/f$h;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->U:Lio/flutter/view/f$h;

    return-object p0
.end method

.method private w0([FZ)Lio/flutter/view/f$l;
    .registers 15

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v2, p1, v1

    div-float/2addr v2, v0

    const/4 v3, 0x1

    aget v4, p1, v3

    div-float/2addr v4, v0

    iget v0, p0, Lio/flutter/view/f$l;->L:F

    const/4 v5, 0x0

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_68

    iget v0, p0, Lio/flutter/view/f$l;->N:F

    cmpl-float v0, v2, v0

    if-gez v0, :cond_68

    iget v0, p0, Lio/flutter/view/f$l;->M:F

    cmpg-float v0, v4, v0

    if-ltz v0, :cond_68

    iget v0, p0, Lio/flutter/view/f$l;->O:F

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_25

    goto :goto_68

    :cond_25
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v2, p0, Lio/flutter/view/f$l;->S:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/view/f$l;

    sget-object v6, Lio/flutter/view/f$i;->s:Lio/flutter/view/f$i;

    invoke-direct {v4, v6}, Lio/flutter/view/f$l;->v0(Lio/flutter/view/f$i;)Z

    move-result v6

    if-eqz v6, :cond_43

    goto :goto_2e

    :cond_43
    invoke-direct {v4}, Lio/flutter/view/f$l;->i0()V

    const/4 v7, 0x0

    iget-object v8, v4, Lio/flutter/view/f$l;->X:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v10, p1

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    invoke-direct {v4, v0, p2}, Lio/flutter/view/f$l;->w0([FZ)Lio/flutter/view/f$l;

    move-result-object v4

    if-eqz v4, :cond_2e

    return-object v4

    :cond_57
    if-eqz p2, :cond_5f

    iget p1, p0, Lio/flutter/view/f$l;->i:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5f

    const/4 v1, 0x1

    :cond_5f
    invoke-direct {p0}, Lio/flutter/view/f$l;->x0()Z

    move-result p1

    if-nez p1, :cond_67

    if-eqz v1, :cond_68

    :cond_67
    move-object v5, p0

    :cond_68
    :goto_68
    return-object v5
.end method

.method static synthetic x(Lio/flutter/view/f$l;)Lio/flutter/view/f$h;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f$l;->V:Lio/flutter/view/f$h;

    return-object p0
.end method

.method private x0()Z
    .registers 5

    sget-object v0, Lio/flutter/view/f$i;->q:Lio/flutter/view/f$i;

    invoke-direct {p0, v0}, Lio/flutter/view/f$l;->v0(Lio/flutter/view/f$i;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Lio/flutter/view/f$i;->A:Lio/flutter/view/f$i;

    invoke-direct {p0, v0}, Lio/flutter/view/f$l;->v0(Lio/flutter/view/f$i;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    :cond_14
    iget v0, p0, Lio/flutter/view/f$l;->d:I

    invoke-static {}, Lio/flutter/view/f;->q()I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_45

    iget v0, p0, Lio/flutter/view/f$l;->c:I

    invoke-static {}, Lio/flutter/view/f;->r()I

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_45

    iget-object v0, p0, Lio/flutter/view/f$l;->o:Ljava/lang/String;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_31
    iget-object v0, p0, Lio/flutter/view/f$l;->q:Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_3b
    iget-object v0, p0, Lio/flutter/view/f$l;->w:Ljava/lang/String;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    :cond_45
    const/4 v1, 0x1

    :cond_46
    return v1
.end method

.method static synthetic y(Lio/flutter/view/f$l;)Ljava/lang/CharSequence;
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f$l;->q0()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private y0(FFFF)F
    .registers 5

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method static synthetic z(Lio/flutter/view/f$l;)Ljava/lang/CharSequence;
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f$l;->p0()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private z0(FFFF)F
    .registers 5

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
