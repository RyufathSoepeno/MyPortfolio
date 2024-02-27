.class public final Lm1/b;
.super Lb1/w;
.source "SourceFile"


# instance fields
.field private final e:I

.field private final f:I

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Lb1/w;-><init>()V

    iput p3, p0, Lm1/b;->e:I

    iput p2, p0, Lm1/b;->f:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_e

    if-gt p1, p2, :cond_11

    goto :goto_12

    :cond_e
    if-lt p1, p2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lm1/b;->g:Z

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move p1, p2

    :goto_18
    iput p1, p0, Lm1/b;->h:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lm1/b;->g:Z

    return v0
.end method

.method public nextInt()I
    .registers 3

    iget v0, p0, Lm1/b;->h:I

    iget v1, p0, Lm1/b;->f:I

    if-ne v0, v1, :cond_14

    iget-boolean v1, p0, Lm1/b;->g:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    iput-boolean v1, p0, Lm1/b;->g:Z

    goto :goto_19

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_14
    iget v1, p0, Lm1/b;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lm1/b;->h:I

    :goto_19
    return v0
.end method
