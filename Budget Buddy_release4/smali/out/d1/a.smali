.class public final enum Ld1/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld1/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ld1/a;

.field public static final enum f:Ld1/a;

.field public static final enum g:Ld1/a;

.field private static final synthetic h:[Ld1/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ld1/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld1/a;->e:Ld1/a;

    new-instance v0, Ld1/a;

    const-string v1, "UNDECIDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ld1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld1/a;->f:Ld1/a;

    new-instance v0, Ld1/a;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ld1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld1/a;->g:Ld1/a;

    invoke-static {}, Ld1/a;->a()[Ld1/a;

    move-result-object v0

    sput-object v0, Ld1/a;->h:[Ld1/a;

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

.method private static final synthetic a()[Ld1/a;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ld1/a;

    sget-object v1, Ld1/a;->e:Ld1/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ld1/a;->f:Ld1/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ld1/a;->g:Ld1/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ld1/a;
    .registers 2

    const-class v0, Ld1/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld1/a;

    return-object p0
.end method

.method public static values()[Ld1/a;
    .registers 1

    sget-object v0, Ld1/a;->h:[Ld1/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld1/a;

    return-object v0
.end method
