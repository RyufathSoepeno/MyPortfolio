.class public final enum Lio/flutter/embedding/android/m$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/android/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lio/flutter/embedding/android/m$b;

.field public static final enum f:Lio/flutter/embedding/android/m$b;

.field private static final synthetic g:[Lio/flutter/embedding/android/m$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lio/flutter/embedding/android/m$b;

    const-string v1, "background"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/android/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/android/m$b;->e:Lio/flutter/embedding/android/m$b;

    new-instance v1, Lio/flutter/embedding/android/m$b;

    const-string v3, "overlay"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/flutter/embedding/android/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/flutter/embedding/android/m$b;->f:Lio/flutter/embedding/android/m$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/flutter/embedding/android/m$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/flutter/embedding/android/m$b;->g:[Lio/flutter/embedding/android/m$b;

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

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/m$b;
    .registers 2

    const-class v0, Lio/flutter/embedding/android/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/m$b;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/m$b;
    .registers 1

    sget-object v0, Lio/flutter/embedding/android/m$b;->g:[Lio/flutter/embedding/android/m$b;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/m$b;

    return-object v0
.end method
