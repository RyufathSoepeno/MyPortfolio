.class final enum Lio/flutter/view/f$p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/f$p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lio/flutter/view/f$p;

.field public static final enum f:Lio/flutter/view/f$p;

.field public static final enum g:Lio/flutter/view/f$p;

.field private static final synthetic h:[Lio/flutter/view/f$p;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lio/flutter/view/f$p;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/f$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/f$p;->e:Lio/flutter/view/f$p;

    new-instance v1, Lio/flutter/view/f$p;

    const-string v3, "LTR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/flutter/view/f$p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/flutter/view/f$p;->f:Lio/flutter/view/f$p;

    new-instance v3, Lio/flutter/view/f$p;

    const-string v5, "RTL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/flutter/view/f$p;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/flutter/view/f$p;->g:Lio/flutter/view/f$p;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/flutter/view/f$p;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/flutter/view/f$p;->h:[Lio/flutter/view/f$p;

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

.method public static a(I)Lio/flutter/view/f$p;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    sget-object p0, Lio/flutter/view/f$p;->e:Lio/flutter/view/f$p;

    return-object p0

    :cond_9
    sget-object p0, Lio/flutter/view/f$p;->f:Lio/flutter/view/f$p;

    return-object p0

    :cond_c
    sget-object p0, Lio/flutter/view/f$p;->g:Lio/flutter/view/f$p;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/f$p;
    .registers 2

    const-class v0, Lio/flutter/view/f$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/f$p;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/f$p;
    .registers 1

    sget-object v0, Lio/flutter/view/f$p;->h:[Lio/flutter/view/f$p;

    invoke-virtual {v0}, [Lio/flutter/view/f$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/f$p;

    return-object v0
.end method
