.class public final enum Lio/flutter/embedding/android/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/f0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lio/flutter/embedding/android/f0;

.field public static final enum f:Lio/flutter/embedding/android/f0;

.field public static final enum g:Lio/flutter/embedding/android/f0;

.field private static final synthetic h:[Lio/flutter/embedding/android/f0;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lio/flutter/embedding/android/f0;

    const-string v1, "surface"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/android/f0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/f0;->e:Lio/flutter/embedding/android/f0;

    new-instance v1, Lio/flutter/embedding/android/f0;

    const-string v3, "texture"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/flutter/embedding/android/f0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/flutter/embedding/android/f0;->f:Lio/flutter/embedding/android/f0;

    new-instance v3, Lio/flutter/embedding/android/f0;

    const-string v5, "image"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/flutter/embedding/android/f0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/flutter/embedding/android/f0;->g:Lio/flutter/embedding/android/f0;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/flutter/embedding/android/f0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/flutter/embedding/android/f0;->h:[Lio/flutter/embedding/android/f0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/f0;
    .registers 2

    const-class v0, Lio/flutter/embedding/android/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/f0;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/f0;
    .registers 1

    sget-object v0, Lio/flutter/embedding/android/f0;->h:[Lio/flutter/embedding/android/f0;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/f0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/f0;

    return-object v0
.end method
