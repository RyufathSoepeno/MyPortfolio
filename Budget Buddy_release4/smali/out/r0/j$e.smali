.class public final enum Lr0/j$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr0/j$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lr0/j$e;

.field private static final synthetic g:[Lr0/j$e;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lr0/j$e;

    const-string v1, "PLAIN_TEXT"

    const/4 v2, 0x0

    const-string v3, "text/plain"

    invoke-direct {v0, v1, v2, v3}, Lr0/j$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr0/j$e;->f:Lr0/j$e;

    const/4 v1, 0x1

    new-array v1, v1, [Lr0/j$e;

    aput-object v0, v1, v2

    sput-object v1, Lr0/j$e;->g:[Lr0/j$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lr0/j$e;->e:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lr0/j$e;
    .registers 6

    invoke-static {}, Lr0/j$e;->values()[Lr0/j$e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    iget-object v4, v3, Lr0/j$e;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such ClipboardContentFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr0/j$e;
    .registers 2

    const-class v0, Lr0/j$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr0/j$e;

    return-object p0
.end method

.method public static values()[Lr0/j$e;
    .registers 1

    sget-object v0, Lr0/j$e;->g:[Lr0/j$e;

    invoke-virtual {v0}, [Lr0/j$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr0/j$e;

    return-object v0
.end method
