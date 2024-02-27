.class Lio/flutter/view/AccessibilityViewEmbedder$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityViewEmbedder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Field;

.field private final f:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 11

    const-string v0, "getSourceNodeId"

    const-string v1, "AccessibilityBridge"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_9
    const-class v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    const-string v4, "can\'t invoke AccessibilityNodeInfo#getSourceNodeId with reflection"

    invoke-static {v1, v4}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    :goto_18
    :try_start_18
    const-class v5, Landroid/view/accessibility/AccessibilityRecord;

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    const-string v0, "can\'t invoke AccessibiiltyRecord#getSourceNodeId with reflection"

    invoke-static {v1, v0}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_27
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    const/4 v7, 0x1

    if-gt v5, v6, :cond_58

    :try_start_2e
    const-class v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v6, "getParentNodeId"

    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    const-string v5, "can\'t invoke getParentNodeId with reflection"

    invoke-static {v1, v5}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    :goto_3f
    :try_start_3f
    const-class v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v8, "getChildId"

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v2

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3f .. :try_end_4d} :catch_4f

    move-object v2, v3

    goto :goto_56

    :catch_4f
    const-string v2, "can\'t invoke getChildId with reflection"

    invoke-static {v1, v2}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    move-object v2, v1

    :goto_56
    move-object v3, v5

    goto :goto_7f

    :cond_58
    :try_start_58
    const-class v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v6, "mChildNodeIds"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v6, "android.util.LongArray"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v8, "get"

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v2

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldException; {:try_start_58 .. :try_end_75} :catch_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_58 .. :try_end_75} :catch_78
    .catch Ljava/lang/NoSuchMethodException; {:try_start_58 .. :try_end_75} :catch_78
    .catch Ljava/lang/NullPointerException; {:try_start_58 .. :try_end_75} :catch_78

    move-object v2, v1

    move-object v1, v3

    goto :goto_80

    :catch_78
    const-string v2, "can\'t access childNodeIdsField with reflection"

    invoke-static {v1, v2}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    move-object v2, v1

    :goto_7f
    move-object v5, v2

    :goto_80
    iput-object v4, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Ljava/lang/reflect/Method;

    iput-object v3, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->c:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->d:Ljava/lang/reflect/Method;

    iput-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->e:Ljava/lang/reflect/Field;

    iput-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/view/AccessibilityViewEmbedder$a;)V
    .registers 2

    invoke-direct {p0}, Lio/flutter/view/AccessibilityViewEmbedder$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->i(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(J)I
    .registers 2

    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->j(J)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityViewEmbedder$b;->f(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lio/flutter/view/AccessibilityViewEmbedder$b;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->h(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/view/accessibility/AccessibilityNodeInfo;I)Ljava/lang/Long;
    .registers 9

    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->e:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->f:Ljava/lang/reflect/Method;

    if-nez v2, :cond_e

    :cond_d
    return-object v1

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "AccessibilityBridge"

    if-eqz v0, :cond_2b

    :try_start_14
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_22} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    move-exception p1

    const-string p2, "The getChildId method threw an exception when invoked."

    goto :goto_53

    :catch_27
    move-exception p1

    const-string p2, "Failed to access getChildId method."

    goto :goto_53

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->f:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_49} :catch_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_49} :catch_4c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2b .. :try_end_49} :catch_4a

    return-object p1

    :catch_4a
    move-exception p1

    goto :goto_4d

    :catch_4c
    move-exception p1

    :goto_4d
    const-string p2, "The longArrayGetIndex method threw an exception when invoked."

    goto :goto_53

    :catch_50
    move-exception p1

    const-string p2, "Failed to access longArrayGetIndex method or the childNodeId field."

    :goto_53
    invoke-static {v4, p2, p1}, Le0/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private g(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .registers 5

    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_22

    const/4 v2, 0x0

    :try_start_7
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_17} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception v1

    const-string v2, "The getParentNodeId method threw an exception when invoked."

    goto :goto_1f

    :catch_1c
    move-exception v1

    const-string v2, "Failed to access getParentNodeId method."

    :goto_1f
    invoke-static {v0, v2, v1}, Le0/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    invoke-static {p1}, Lio/flutter/view/AccessibilityViewEmbedder$b;->l(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private h(Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Long;
    .registers 6

    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    const/4 v3, 0x0

    :try_start_9
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_11} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    const-string v1, "The getRecordSourceNodeId method threw an exception when invoked."

    goto :goto_19

    :catch_16
    move-exception p1

    const-string v1, "Failed to access the getRecordSourceNodeId method."

    :goto_19
    invoke-static {v0, v1, p1}, Le0/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private i(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .registers 6

    const-string v0, "AccessibilityBridge"

    iget-object v1, p0, Lio/flutter/view/AccessibilityViewEmbedder$b;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    const/4 v3, 0x0

    :try_start_9
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_11} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    const-string v1, "The getSourceNodeId method threw an exception when invoked."

    goto :goto_19

    :catch_16
    move-exception p1

    const-string v1, "Failed to access getSourceNodeId method."

    :goto_19
    invoke-static {v0, v1, p1}, Le0/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static j(J)I
    .registers 3

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static k(JI)Z
    .registers 5

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-eqz p2, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static l(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Long;
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_f

    const-string p0, "AccessibilityBridge"

    const-string v0, "Unexpected Android version. Unable to find the parent ID."

    invoke-static {p0, v0}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 p0, 0x1

    invoke-static {v3, v4, v2}, Lio/flutter/view/AccessibilityViewEmbedder$b;->k(JI)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    :cond_2f
    const/4 v2, 0x2

    invoke-static {v3, v4, p0}, Lio/flutter/view/AccessibilityViewEmbedder$b;->k(JI)Z

    move-result p0

    if-eqz p0, :cond_39

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    :cond_39
    const/4 p0, 0x3

    invoke-static {v3, v4, v2}, Lio/flutter/view/AccessibilityViewEmbedder$b;->k(JI)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    :cond_43
    invoke-static {v3, v4, p0}, Lio/flutter/view/AccessibilityViewEmbedder$b;->k(JI)Z

    move-result p0

    if-eqz p0, :cond_51

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
