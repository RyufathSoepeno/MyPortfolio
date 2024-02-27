.class public Lm1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm1/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lm1/a$a;


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm1/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm1/a$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lm1/a;->h:Lm1/a$a;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1c

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_14

    iput p1, p0, Lm1/a;->e:I

    invoke-static {p1, p2, p3}, Le1/c;->b(III)I

    move-result p1

    iput p1, p0, Lm1/a;->f:I

    iput p3, p0, Lm1/a;->g:I

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lm1/a;->e:I

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lm1/a;->f:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lm1/a;->g:I

    return v0
.end method

.method public d()Lb1/w;
    .registers 5

    new-instance v0, Lm1/b;

    iget v1, p0, Lm1/a;->e:I

    iget v2, p0, Lm1/a;->f:I

    iget v3, p0, Lm1/a;->g:I

    invoke-direct {v0, v1, v2, v3}, Lm1/b;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lm1/a;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lm1/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lm1/a;

    invoke-virtual {v0}, Lm1/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_13
    iget v0, p0, Lm1/a;->e:I

    check-cast p1, Lm1/a;

    iget v1, p1, Lm1/a;->e:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Lm1/a;->f:I

    iget v1, p1, Lm1/a;->f:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Lm1/a;->g:I

    iget p1, p1, Lm1/a;->g:I

    if-ne v0, p1, :cond_29

    :cond_27
    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    return p1
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lm1/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_14

    :cond_8
    iget v0, p0, Lm1/a;->e:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lm1/a;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lm1/a;->g:I

    add-int/2addr v0, v1

    :goto_14
    return v0
.end method

.method public isEmpty()Z
    .registers 5

    iget v0, p0, Lm1/a;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_d

    iget v0, p0, Lm1/a;->e:I

    iget v3, p0, Lm1/a;->f:I

    if-le v0, v3, :cond_14

    goto :goto_15

    :cond_d
    iget v0, p0, Lm1/a;->e:I

    iget v3, p0, Lm1/a;->f:I

    if-ge v0, v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lm1/a;->d()Lb1/w;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lm1/a;->g:I

    const-string v1, " step "

    if-lez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lm1/a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm1/a;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm1/a;->g:I

    goto :goto_3a

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lm1/a;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm1/a;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm1/a;->g:I

    neg-int v1, v1

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
