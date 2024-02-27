.class public Lio/flutter/embedding/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Landroid/graphics/Matrix;


# instance fields
.field private final a:Lq0/a;

.field private final b:Lio/flutter/embedding/android/e0;

.field private final c:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lio/flutter/embedding/android/a;->e:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lq0/a;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/a;->d:Ljava/util/Map;

    iput-object p1, p0, Lio/flutter/embedding/android/a;->a:Lq0/a;

    invoke-static {}, Lio/flutter/embedding/android/e0;->a()Lio/flutter/embedding/android/e0;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/a;->b:Lio/flutter/embedding/android/e0;

    iput-boolean p2, p0, Lio/flutter/embedding/android/a;->c:Z

    return-void
.end method

.method private a(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    const/4 v5, -0x1

    if-ne v3, v5, :cond_e

    return-void

    :cond_e
    iget-boolean v5, v0, Lio/flutter/embedding/android/a;->c:Z

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lio/flutter/embedding/android/a;->b:Lio/flutter/embedding/android/e0;

    invoke-virtual {v5, v1}, Lio/flutter/embedding/android/e0;->c(Landroid/view/MotionEvent;)Lio/flutter/embedding/android/e0$a;

    move-result-object v5

    invoke-virtual {v5}, Lio/flutter/embedding/android/e0$a;->d()J

    move-result-wide v8

    goto :goto_20

    :cond_1f
    move-wide v8, v6

    :goto_20
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    invoke-direct {v0, v5}, Lio/flutter/embedding/android/a;->d(I)I

    move-result v5

    const/4 v10, 0x2

    new-array v11, v10, [F

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/4 v13, 0x0

    aput v12, v11, v13

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    const/4 v14, 0x1

    aput v12, v11, v14

    move-object/from16 v12, p5

    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v12, 0x4

    if-ne v5, v14, :cond_64

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    and-int/lit8 v15, v15, 0x1f

    int-to-long v14, v15

    cmp-long v16, v14, v6

    if-nez v16, :cond_71

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    const/16 v6, 0x2002

    if-ne v13, v6, :cond_71

    if-ne v3, v12, :cond_71

    iget-object v6, v0, Lio/flutter/embedding/android/a;->d:Ljava/util/Map;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    :cond_64
    if-ne v5, v10, :cond_6f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    shr-int/2addr v6, v12

    and-int/lit8 v6, v6, 0xf

    int-to-long v14, v6

    goto :goto_71

    :cond_6f
    const-wide/16 v14, 0x0

    :cond_71
    :goto_71
    iget-object v6, v0, Lio/flutter/embedding/android/a;->d:Ljava/util/Map;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/16 v12, 0x8

    if-ne v7, v12, :cond_89

    const/4 v7, 0x1

    goto :goto_8a

    :cond_89
    const/4 v7, 0x0

    :goto_8a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v12, v17, v19

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_a5

    invoke-direct {v0, v3}, Lio/flutter/embedding/android/a;->c(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const-wide/16 v8, 0x4

    goto :goto_aa

    :cond_a5
    int-to-long v8, v3

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long v8, v5

    :goto_aa
    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_df

    iget-object v8, v0, Lio/flutter/embedding/android/a;->d:Ljava/util/Map;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    const/4 v9, 0x0

    aget v12, v8, v9

    float-to-double v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/4 v12, 0x1

    aget v8, v8, v12

    float-to-double v12, v8

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_ed

    :cond_df
    const/4 v9, 0x0

    aget v8, v11, v9

    float-to-double v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/4 v8, 0x1

    aget v9, v11, v8

    float-to-double v8, v9

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    :goto_ed
    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v14, v15}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v12

    if-eqz v12, :cond_123

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v12

    if-eqz v12, :cond_123

    invoke-virtual {v12}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v15

    float-to-double v13, v15

    invoke-virtual {v12}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result v12

    float-to-double v8, v12

    goto :goto_127

    :cond_123
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    :goto_127
    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    if-ne v5, v10, :cond_13c

    const/16 v8, 0x18

    invoke-virtual {v1, v8, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v8, 0x0

    goto :goto_141

    :cond_13c
    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    :goto_141
    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/16 v12, 0x8

    invoke-virtual {v1, v12, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    if-ne v5, v10, :cond_179

    const/16 v5, 0x19

    invoke-virtual {v1, v5, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v5

    float-to-double v12, v5

    invoke-virtual {v4, v12, v13}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_17c

    :cond_179
    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    :goto_17c
    move/from16 v5, p4

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v5, 0x9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_199

    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    neg-float v7, v7

    float-to-double v7, v7

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    neg-float v7, v7

    float-to-double v7, v7

    goto :goto_19e

    :cond_199
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    :goto_19e
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_1ca

    iget-object v7, v0, Lio/flutter/embedding/android/a;->d:Ljava/util/Map;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    const/4 v8, 0x0

    aget v9, v11, v8

    aget v8, v7, v8

    sub-float/2addr v9, v8

    float-to-double v8, v9

    invoke-virtual {v4, v8, v9}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const/4 v8, 0x1

    aget v9, v11, v8

    aget v7, v7, v8

    sub-float/2addr v9, v7

    float-to-double v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x0

    goto :goto_1d2

    :cond_1ca
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    :goto_1d2
    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v9, v10}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_1f5

    invoke-direct {v0, v3}, Lio/flutter/embedding/android/a;->c(I)I

    move-result v3

    if-ne v3, v5, :cond_1f5

    iget-object v3, v0, Lio/flutter/embedding/android/a;->d:Ljava/util/Map;

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f5
    return-void
.end method

.method private b(I)I
    .registers 5

    const/4 v0, 0x4

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne p1, v1, :cond_9

    return v2

    :cond_9
    const/4 v1, 0x5

    if-ne p1, v1, :cond_d

    return v0

    :cond_d
    if-ne p1, v2, :cond_10

    return v2

    :cond_10
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x7

    const/4 v1, 0x3

    if-ne p1, v0, :cond_19

    return v1

    :cond_19
    if-ne p1, v1, :cond_1d

    const/4 p1, 0x0

    return p1

    :cond_1d
    const/16 v0, 0x8

    if-ne p1, v0, :cond_22

    return v1

    :cond_22
    const/4 p1, -0x1

    return p1
.end method

.method private c(I)I
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 p1, 0x7

    return p1

    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    const/16 p1, 0x8

    return p1

    :cond_b
    const/4 v0, 0x6

    if-eq p1, v0, :cond_19

    if-nez p1, :cond_11

    goto :goto_19

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected pointer change"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_19
    :goto_19
    const/16 p1, 0x9

    return p1
.end method

.method private d(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 p1, 0x5

    return p1

    :cond_e
    return v1

    :cond_f
    return v0

    :cond_10
    return v1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public e(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x7

    const/16 v5, 0x8

    if-eq v3, v4, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v5, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    if-eqz v0, :cond_64

    if-nez v3, :cond_24

    goto :goto_64

    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/a;->b(I)I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x23

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    const/4 v10, 0x0

    sget-object v11, Lio/flutter/embedding/android/a;->e:Landroid/graphics/Matrix;

    move-object v6, p0

    move-object v7, p1

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Lio/flutter/embedding/android/a;->a(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p1

    rem-int/lit16 p1, p1, 0x118

    if-nez p1, :cond_5c

    iget-object p1, p0, Lio/flutter/embedding/android/a;->a:Lq0/a;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lq0/a;->i(Ljava/nio/ByteBuffer;I)V

    return v1

    :cond_5c
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Packet position is not on field boundary."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_64
    :goto_64
    return v2
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .registers 3

    sget-object v0, Lio/flutter/embedding/android/a;->e:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/android/a;->g(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public g(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Z
    .registers 15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    mul-int/lit8 v1, v0, 0x23

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-direct {p0, v3}, Lio/flutter/embedding/android/a;->b(I)I

    move-result v9

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_27

    const/4 v4, 0x5

    if-ne v2, v4, :cond_25

    goto :goto_27

    :cond_25
    const/4 v4, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v4, 0x1

    :goto_28
    if-nez v4, :cond_31

    if-eq v2, v10, :cond_2f

    const/4 v5, 0x6

    if-ne v2, v5, :cond_31

    :cond_2f
    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    if-eqz v4, :cond_42

    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, v9

    move-object v7, p2

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lio/flutter/embedding/android/a;->a(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    goto :goto_6f

    :cond_42
    const/4 v11, 0x0

    if-eqz v2, :cond_60

    :goto_45
    if-ge v11, v0, :cond_34

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-eq v11, v2, :cond_5d

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v10, :cond_5d

    const/4 v5, 0x5

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move-object v7, p2

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lio/flutter/embedding/android/a;->a(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_45

    :cond_60
    :goto_60
    if-ge v11, v0, :cond_6f

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, v11

    move v5, v9

    move-object v7, p2

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lio/flutter/embedding/android/a;->a(Landroid/view/MotionEvent;IIILandroid/graphics/Matrix;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_60

    :cond_6f
    :goto_6f
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result p1

    rem-int/lit16 p1, p1, 0x118

    if-nez p1, :cond_81

    iget-object p1, p0, Lio/flutter/embedding/android/a;->a:Lq0/a;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lq0/a;->i(Ljava/nio/ByteBuffer;I)V

    return v10

    :cond_81
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Packet position is not on field boundary"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
