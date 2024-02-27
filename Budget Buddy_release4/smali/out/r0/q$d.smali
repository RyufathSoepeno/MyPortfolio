.class public final enum Lr0/q$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr0/q$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lr0/q$d;

.field public static final enum g:Lr0/q$d;

.field public static final enum h:Lr0/q$d;

.field public static final enum i:Lr0/q$d;

.field private static final synthetic j:[Lr0/q$d;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lr0/q$d;

    const-string v1, "CHARACTERS"

    const/4 v2, 0x0

    const-string v3, "TextCapitalization.characters"

    invoke-direct {v0, v1, v2, v3}, Lr0/q$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr0/q$d;->f:Lr0/q$d;

    new-instance v1, Lr0/q$d;

    const-string v3, "WORDS"

    const/4 v4, 0x1

    const-string v5, "TextCapitalization.words"

    invoke-direct {v1, v3, v4, v5}, Lr0/q$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr0/q$d;->g:Lr0/q$d;

    new-instance v3, Lr0/q$d;

    const-string v5, "SENTENCES"

    const/4 v6, 0x2

    const-string v7, "TextCapitalization.sentences"

    invoke-direct {v3, v5, v6, v7}, Lr0/q$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr0/q$d;->h:Lr0/q$d;

    new-instance v5, Lr0/q$d;

    const-string v7, "NONE"

    const/4 v8, 0x3

    const-string v9, "TextCapitalization.none"

    invoke-direct {v5, v7, v8, v9}, Lr0/q$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lr0/q$d;->i:Lr0/q$d;

    const/4 v7, 0x4

    new-array v7, v7, [Lr0/q$d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lr0/q$d;->j:[Lr0/q$d;

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

    iput-object p3, p0, Lr0/q$d;->e:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lr0/q$d;
    .registers 6

    invoke-static {}, Lr0/q$d;->values()[Lr0/q$d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    iget-object v4, v3, Lr0/q$d;->e:Ljava/lang/String;

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

    const-string v2, "No such TextCapitalization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr0/q$d;
    .registers 2

    const-class v0, Lr0/q$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr0/q$d;

    return-object p0
.end method

.method public static values()[Lr0/q$d;
    .registers 1

    sget-object v0, Lr0/q$d;->j:[Lr0/q$d;

    invoke-virtual {v0}, [Lr0/q$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr0/q$d;

    return-object v0
.end method
