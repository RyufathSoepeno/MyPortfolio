.class final enum Lio/flutter/view/f$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/f$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lio/flutter/view/f$f;

.field public static final enum g:Lio/flutter/view/f$f;

.field public static final enum h:Lio/flutter/view/f$f;

.field public static final enum i:Lio/flutter/view/f$f;

.field public static final enum j:Lio/flutter/view/f$f;

.field public static final enum k:Lio/flutter/view/f$f;

.field public static final enum l:Lio/flutter/view/f$f;

.field private static final synthetic m:[Lio/flutter/view/f$f;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lio/flutter/view/f$f;

    const-string v1, "ACCESSIBLE_NAVIGATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/f$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/f$f;->f:Lio/flutter/view/f$f;

    new-instance v1, Lio/flutter/view/f$f;

    const-string v4, "INVERT_COLORS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/flutter/view/f$f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/flutter/view/f$f;->g:Lio/flutter/view/f$f;

    new-instance v4, Lio/flutter/view/f$f;

    const-string v6, "DISABLE_ANIMATIONS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lio/flutter/view/f$f;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/flutter/view/f$f;->h:Lio/flutter/view/f$f;

    new-instance v6, Lio/flutter/view/f$f;

    const-string v8, "BOLD_TEXT"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lio/flutter/view/f$f;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/flutter/view/f$f;->i:Lio/flutter/view/f$f;

    new-instance v8, Lio/flutter/view/f$f;

    const-string v10, "REDUCE_MOTION"

    const/16 v11, 0x10

    invoke-direct {v8, v10, v7, v11}, Lio/flutter/view/f$f;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/flutter/view/f$f;->j:Lio/flutter/view/f$f;

    new-instance v10, Lio/flutter/view/f$f;

    const-string v11, "HIGH_CONTRAST"

    const/4 v12, 0x5

    const/16 v13, 0x20

    invoke-direct {v10, v11, v12, v13}, Lio/flutter/view/f$f;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/flutter/view/f$f;->k:Lio/flutter/view/f$f;

    new-instance v11, Lio/flutter/view/f$f;

    const-string v13, "ON_OFF_SWITCH_LABELS"

    const/4 v14, 0x6

    const/16 v15, 0x40

    invoke-direct {v11, v13, v14, v15}, Lio/flutter/view/f$f;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/flutter/view/f$f;->l:Lio/flutter/view/f$f;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/flutter/view/f$f;

    aput-object v0, v13, v2

    aput-object v1, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v9

    aput-object v8, v13, v7

    aput-object v10, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lio/flutter/view/f$f;->m:[Lio/flutter/view/f$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/flutter/view/f$f;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/f$f;
    .registers 2

    const-class v0, Lio/flutter/view/f$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/f$f;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/f$f;
    .registers 1

    sget-object v0, Lio/flutter/view/f$f;->m:[Lio/flutter/view/f$f;

    invoke-virtual {v0}, [Lio/flutter/view/f$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/f$f;

    return-object v0
.end method
