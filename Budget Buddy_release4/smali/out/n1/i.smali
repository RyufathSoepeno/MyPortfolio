.class public final enum Ln1/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln1/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ln1/i;

.field public static final enum f:Ln1/i;

.field public static final enum g:Ln1/i;

.field public static final enum h:Ln1/i;

.field private static final synthetic i:[Ln1/i;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ln1/i;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln1/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/i;->e:Ln1/i;

    new-instance v0, Ln1/i;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln1/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/i;->f:Ln1/i;

    new-instance v0, Ln1/i;

    const-string v1, "INTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln1/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/i;->g:Ln1/i;

    new-instance v0, Ln1/i;

    const-string v1, "PRIVATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ln1/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln1/i;->h:Ln1/i;

    invoke-static {}, Ln1/i;->a()[Ln1/i;

    move-result-object v0

    sput-object v0, Ln1/i;->i:[Ln1/i;

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

.method private static final synthetic a()[Ln1/i;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ln1/i;

    sget-object v1, Ln1/i;->e:Ln1/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ln1/i;->f:Ln1/i;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ln1/i;->g:Ln1/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ln1/i;->h:Ln1/i;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln1/i;
    .registers 2

    const-class v0, Ln1/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln1/i;

    return-object p0
.end method

.method public static values()[Ln1/i;
    .registers 1

    sget-object v0, Ln1/i;->i:[Ln1/i;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln1/i;

    return-object v0
.end method
