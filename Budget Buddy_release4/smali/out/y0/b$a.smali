.class final enum Ly0/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly0/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ly0/b$a;

.field public static final enum f:Ly0/b$a;

.field public static final enum g:Ly0/b$a;

.field private static final synthetic h:[Ly0/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ly0/b$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly0/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly0/b$a;->e:Ly0/b$a;

    new-instance v0, Ly0/b$a;

    const-string v1, "NO_ACTIVITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ly0/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly0/b$a;->f:Ly0/b$a;

    new-instance v0, Ly0/b$a;

    const-string v1, "ACTIVITY_NOT_FOUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ly0/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly0/b$a;->g:Ly0/b$a;

    invoke-static {}, Ly0/b$a;->a()[Ly0/b$a;

    move-result-object v0

    sput-object v0, Ly0/b$a;->h:[Ly0/b$a;

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

.method private static synthetic a()[Ly0/b$a;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ly0/b$a;

    sget-object v1, Ly0/b$a;->e:Ly0/b$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ly0/b$a;->f:Ly0/b$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ly0/b$a;->g:Ly0/b$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ly0/b$a;
    .registers 2

    const-class v0, Ly0/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly0/b$a;

    return-object p0
.end method

.method public static values()[Ly0/b$a;
    .registers 1

    sget-object v0, Ly0/b$a;->h:[Ly0/b$a;

    invoke-virtual {v0}, [Ly0/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly0/b$a;

    return-object v0
.end method
