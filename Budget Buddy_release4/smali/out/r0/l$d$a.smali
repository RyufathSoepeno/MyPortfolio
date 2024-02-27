.class public final enum Lr0/l$d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/l$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr0/l$d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lr0/l$d$a;

.field public static final enum f:Lr0/l$d$a;

.field public static final enum g:Lr0/l$d$a;

.field private static final synthetic h:[Lr0/l$d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lr0/l$d$a;

    const-string v1, "TEXTURE_WITH_VIRTUAL_FALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr0/l$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr0/l$d$a;->e:Lr0/l$d$a;

    new-instance v1, Lr0/l$d$a;

    const-string v3, "TEXTURE_WITH_HYBRID_FALLBACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr0/l$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr0/l$d$a;->f:Lr0/l$d$a;

    new-instance v3, Lr0/l$d$a;

    const-string v5, "HYBRID_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr0/l$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr0/l$d$a;->g:Lr0/l$d$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lr0/l$d$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lr0/l$d$a;->h:[Lr0/l$d$a;

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

.method public static valueOf(Ljava/lang/String;)Lr0/l$d$a;
    .registers 2

    const-class v0, Lr0/l$d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr0/l$d$a;

    return-object p0
.end method

.method public static values()[Lr0/l$d$a;
    .registers 1

    sget-object v0, Lr0/l$d$a;->h:[Lr0/l$d$a;

    invoke-virtual {v0}, [Lr0/l$d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr0/l$d$a;

    return-object v0
.end method
