.class public Ls0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls0/p;

.field private static final b:Z

.field private static final c:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ls0/p;

    invoke-direct {v0}, Ls0/p;-><init>()V

    sput-object v0, Ls0/p;->a:Ls0/p;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sput-boolean v0, Ls0/p;->b:Z

    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Ls0/p;->c:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final c(Ljava/nio/ByteBuffer;I)V
    .registers 4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_10
    return-void
.end method

.method protected static final d(Ljava/nio/ByteBuffer;)[B
    .registers 2

    invoke-static {p0}, Ls0/p;->e(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected static final e(Ljava/nio/ByteBuffer;)I
    .registers 3

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xfe

    if-ge v0, v1, :cond_11

    return v0

    :cond_11
    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result p0

    return p0

    :cond_18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message corrupted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static final h(Ljava/io/ByteArrayOutputStream;I)V
    .registers 6

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    sub-int v3, p1, v0

    if-ge v2, v3, :cond_13

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method protected static final i(Ljava/io/ByteArrayOutputStream;[B)V
    .registers 4

    array-length v0, p1

    invoke-static {p0, v0}, Ls0/p;->o(Ljava/io/ByteArrayOutputStream;I)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method protected static final j(Ljava/io/ByteArrayOutputStream;I)V
    .registers 3

    sget-boolean v0, Ls0/p;->b:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    goto :goto_f

    :cond_a
    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_f
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method protected static final k(Ljava/io/ByteArrayOutputStream;D)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Ls0/p;->n(Ljava/io/ByteArrayOutputStream;J)V

    return-void
.end method

.method protected static final l(Ljava/io/ByteArrayOutputStream;F)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p0, p1}, Ls0/p;->m(Ljava/io/ByteArrayOutputStream;I)V

    return-void
.end method

.method protected static final m(Ljava/io/ByteArrayOutputStream;I)V
    .registers 3

    sget-boolean v0, Ls0/p;->b:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    goto :goto_23

    :cond_14
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_23
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method protected static final n(Ljava/io/ByteArrayOutputStream;J)V
    .registers 12

    sget-boolean v0, Ls0/p;->b:Z

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x20

    const/16 v5, 0x28

    const/16 v6, 0x30

    const/16 v7, 0x38

    if-eqz v0, :cond_43

    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v1

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v3

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v4

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v5

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v6

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long/2addr p1, v7

    goto :goto_74

    :cond_43
    ushr-long v7, p1, v7

    long-to-int v0, v7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v6, p1, v6

    long-to-int v0, v6

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v5, p1, v5

    long-to-int v0, v5

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v4, p1, v4

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v3, p1, v3

    long-to-int v0, v3

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v2, p1, v2

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-long v0, p1, v1

    long-to-int v1, v0

    int-to-byte v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_74
    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method protected static final o(Ljava/io/ByteArrayOutputStream;I)V
    .registers 4

    const/16 v0, 0xfe

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1c

    :cond_8
    const v1, 0xffff

    if-gt p1, v1, :cond_14

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0, p1}, Ls0/p;->j(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_1c

    :cond_14
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0, p1}, Ls0/p;->m(Ljava/io/ByteArrayOutputStream;I)V

    :goto_1c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Ls0/p$a;

    invoke-direct {v0}, Ls0/p$a;-><init>()V

    invoke-virtual {p0, v0, p1}, Ls0/p;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0}, Ls0/p$a;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ls0/p;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_16

    return-object v0

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message corrupted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0, p1}, Ls0/p;->g(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message corrupted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected g(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_e2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message corrupted"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_f
    invoke-static {p2}, Ls0/p;->e(Ljava/nio/ByteBuffer;)I

    move-result p1

    new-array v0, p1, [F

    invoke-static {p2, v1}, Ls0/p;->c(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    goto :goto_8d

    :pswitch_20
    invoke-static {p2}, Ls0/p;->e(Ljava/nio/ByteBuffer;)I

    move-result p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_29
    if-ge v0, p1, :cond_4e

    invoke-virtual {p0, p2}, Ls0/p;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p2}, Ls0/p;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :pswitch_39
    invoke-static {p2}, Ls0/p;->e(Ljava/nio/ByteBuffer;)I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_42
    if-ge v0, p1, :cond_4e

    invoke-virtual {p0, p2}, Ls0/p;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4e
    move-object v0, v1

    goto/16 :goto_e1

    :pswitch_51
    invoke-static {p2}, Ls0/p;->e(Ljava/nio/ByteBuffer;)I

    move-result p1

    new-array v0, p1, [D

    invoke-static {p2, v2}, Ls0/p;->c(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    goto :goto_72

    :pswitch_62
    invoke-static {p2}, Ls0/p;->e(Ljava/nio/ByteBuffer;)I

    move-result p1

    new-array v0, p1, [J

    invoke-static {p2, v2}, Ls0/p;->c(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    :goto_72
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v1

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_e1

    :pswitch_7d
    invoke-static {p2}, Ls0/p;->e(Ljava/nio/ByteBuffer;)I

    move-result p1

    new-array v0, p1, [I

    invoke-static {p2, v1}, Ls0/p;->c(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    :goto_8d
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v2

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v2, p1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_e1

    :pswitch_98
    invoke-static {p2}, Ls0/p;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    goto :goto_e1

    :pswitch_9d
    invoke-static {p2}, Ls0/p;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    sget-object p2, Ls0/p;->c:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_e1

    :pswitch_a9
    invoke-static {p2, v2}, Ls0/p;->c(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e1

    :pswitch_b5
    invoke-static {p2}, Ls0/p;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    new-instance p2, Ljava/lang/String;

    sget-object v1, Ls0/p;->c:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 p1, 0x10

    invoke-direct {v0, p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    goto :goto_e1

    :pswitch_c8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_e1

    :pswitch_d1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e1

    :pswitch_da
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_e1

    :pswitch_dd
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e1

    :pswitch_e0
    const/4 v0, 0x0

    :goto_e1
    return-object v0

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d1
        :pswitch_c8
        :pswitch_b5
        :pswitch_a9
        :pswitch_9d
        :pswitch_98
        :pswitch_7d
        :pswitch_62
        :pswitch_51
        :pswitch_39
        :pswitch_20
        :pswitch_f
    .end packed-switch
.end method

.method protected p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1c0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_1c0

    :cond_c
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_20

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p2, 0x2

    :goto_1b
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1c3

    :cond_20
    instance-of v1, p2, Ljava/lang/Number;

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_a6

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_97

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_97

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_34

    goto :goto_97

    :cond_34
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_46

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ls0/p;->n(Ljava/io/ByteArrayOutputStream;J)V

    goto/16 :goto_1c3

    :cond_46
    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_85

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4f

    goto :goto_85

    :cond_4f
    instance-of v0, p2, Ljava/math/BigInteger;

    if-eqz v0, :cond_6a

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Ljava/math/BigInteger;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ls0/p;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p1, p2}, Ls0/p;->i(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_1c3

    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Number type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_85
    :goto_85
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1, v3}, Ls0/p;->h(Ljava/io/ByteArrayOutputStream;I)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ls0/p;->k(Ljava/io/ByteArrayOutputStream;D)V

    goto/16 :goto_1c3

    :cond_97
    :goto_97
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ls0/p;->m(Ljava/io/ByteArrayOutputStream;I)V

    goto/16 :goto_1c3

    :cond_a6
    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_bd

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ls0/p;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p1, p2}, Ls0/p;->i(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_1c3

    :cond_bd
    instance-of v1, p2, [B

    if-eqz v1, :cond_cb

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, [B

    invoke-static {p1, p2}, Ls0/p;->i(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_1c3

    :cond_cb
    instance-of v1, p2, [I

    if-eqz v1, :cond_e8

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, [I

    array-length v1, p2

    invoke-static {p1, v1}, Ls0/p;->o(Ljava/io/ByteArrayOutputStream;I)V

    invoke-static {p1, v2}, Ls0/p;->h(Ljava/io/ByteArrayOutputStream;I)V

    array-length v1, p2

    :goto_de
    if-ge v0, v1, :cond_1c3

    aget v2, p2, v0

    invoke-static {p1, v2}, Ls0/p;->m(Ljava/io/ByteArrayOutputStream;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    :cond_e8
    instance-of v1, p2, [J

    if-eqz v1, :cond_105

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, [J

    array-length v1, p2

    invoke-static {p1, v1}, Ls0/p;->o(Ljava/io/ByteArrayOutputStream;I)V

    invoke-static {p1, v3}, Ls0/p;->h(Ljava/io/ByteArrayOutputStream;I)V

    array-length v1, p2

    :goto_fb
    if-ge v0, v1, :cond_1c3

    aget-wide v2, p2, v0

    invoke-static {p1, v2, v3}, Ls0/p;->n(Ljava/io/ByteArrayOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_fb

    :cond_105
    instance-of v1, p2, [D

    if-eqz v1, :cond_122

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, [D

    array-length v1, p2

    invoke-static {p1, v1}, Ls0/p;->o(Ljava/io/ByteArrayOutputStream;I)V

    invoke-static {p1, v3}, Ls0/p;->h(Ljava/io/ByteArrayOutputStream;I)V

    array-length v1, p2

    :goto_118
    if-ge v0, v1, :cond_1c3

    aget-wide v2, p2, v0

    invoke-static {p1, v2, v3}, Ls0/p;->k(Ljava/io/ByteArrayOutputStream;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    :cond_122
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_146

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ls0/p;->o(Ljava/io/ByteArrayOutputStream;I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_138
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ls0/p;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_138

    :cond_146
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_17b

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Ls0/p;->o(Ljava/io/ByteArrayOutputStream;I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_160
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ls0/p;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ls0/p;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_160

    :cond_17b
    instance-of v1, p2, [F

    if-eqz v1, :cond_198

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, [F

    array-length v1, p2

    invoke-static {p1, v1}, Ls0/p;->o(Ljava/io/ByteArrayOutputStream;I)V

    invoke-static {p1, v2}, Ls0/p;->h(Ljava/io/ByteArrayOutputStream;I)V

    array-length v1, p2

    :goto_18e
    if-ge v0, v1, :cond_1c3

    aget v2, p2, v0

    invoke-static {p1, v2}, Ls0/p;->l(Ljava/io/ByteArrayOutputStream;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18e

    :cond_198
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported value: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c0
    :goto_1c0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1c3
    :goto_1c3
    return-void
.end method
