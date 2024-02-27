.class public final enum Lio/flutter/plugins/localauth/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/localauth/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/localauth/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lio/flutter/plugins/localauth/f$a;

.field public static final enum g:Lio/flutter/plugins/localauth/f$a;

.field private static final synthetic h:[Lio/flutter/plugins/localauth/f$a;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/flutter/plugins/localauth/f$a;

    const-string v1, "WEAK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/localauth/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/plugins/localauth/f$a;->f:Lio/flutter/plugins/localauth/f$a;

    new-instance v0, Lio/flutter/plugins/localauth/f$a;

    const-string v1, "STRONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lio/flutter/plugins/localauth/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/plugins/localauth/f$a;->g:Lio/flutter/plugins/localauth/f$a;

    invoke-static {}, Lio/flutter/plugins/localauth/f$a;->a()[Lio/flutter/plugins/localauth/f$a;

    move-result-object v0

    sput-object v0, Lio/flutter/plugins/localauth/f$a;->h:[Lio/flutter/plugins/localauth/f$a;

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

    iput p3, p0, Lio/flutter/plugins/localauth/f$a;->e:I

    return-void
.end method

.method private static synthetic a()[Lio/flutter/plugins/localauth/f$a;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/flutter/plugins/localauth/f$a;

    sget-object v1, Lio/flutter/plugins/localauth/f$a;->f:Lio/flutter/plugins/localauth/f$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/plugins/localauth/f$a;->g:Lio/flutter/plugins/localauth/f$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/localauth/f$a;
    .registers 2

    const-class v0, Lio/flutter/plugins/localauth/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/localauth/f$a;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/localauth/f$a;
    .registers 1

    sget-object v0, Lio/flutter/plugins/localauth/f$a;->h:[Lio/flutter/plugins/localauth/f$a;

    invoke-virtual {v0}, [Lio/flutter/plugins/localauth/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugins/localauth/f$a;

    return-object v0
.end method
