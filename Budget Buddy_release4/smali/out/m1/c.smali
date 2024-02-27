.class public final Lm1/c;
.super Lm1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm1/a;"
    }
.end annotation


# static fields
.field public static final i:Lm1/c$a;

.field private static final j:Lm1/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm1/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm1/c$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lm1/c;->i:Lm1/c$a;

    new-instance v0, Lm1/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm1/c;-><init>(II)V

    sput-object v0, Lm1/c;->j:Lm1/c;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lm1/a;-><init>(III)V

    return-void
.end method

.method public static final synthetic e()Lm1/c;
    .registers 1

    sget-object v0, Lm1/c;->j:Lm1/c;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lm1/c;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lm1/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lm1/c;

    invoke-virtual {v0}, Lm1/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_13
    invoke-virtual {p0}, Lm1/a;->a()I

    move-result v0

    check-cast p1, Lm1/c;

    invoke-virtual {p1}, Lm1/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lm1/a;->b()I

    move-result v0

    invoke-virtual {p1}, Lm1/a;->b()I

    move-result p1

    if-ne v0, p1, :cond_2b

    :cond_29
    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method public f(I)Z
    .registers 3

    invoke-virtual {p0}, Lm1/a;->a()I

    move-result v0

    if-gt v0, p1, :cond_e

    invoke-virtual {p0}, Lm1/a;->b()I

    move-result v0

    if-gt p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public g()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lm1/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lm1/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lm1/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_13

    :cond_8
    invoke-virtual {p0}, Lm1/a;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lm1/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    :goto_13
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    invoke-virtual {p0}, Lm1/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lm1/a;->b()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lm1/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm1/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
