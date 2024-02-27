.class public final enum Lr0/j$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr0/j$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lr0/j$g;

.field public static final enum g:Lr0/j$g;

.field public static final enum h:Lr0/j$g;

.field public static final enum i:Lr0/j$g;

.field public static final enum j:Lr0/j$g;

.field private static final synthetic k:[Lr0/j$g;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lr0/j$g;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr0/j$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr0/j$g;->f:Lr0/j$g;

    new-instance v1, Lr0/j$g;

    const-string v3, "LIGHT_IMPACT"

    const/4 v4, 0x1

    const-string v5, "HapticFeedbackType.lightImpact"

    invoke-direct {v1, v3, v4, v5}, Lr0/j$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr0/j$g;->g:Lr0/j$g;

    new-instance v3, Lr0/j$g;

    const-string v5, "MEDIUM_IMPACT"

    const/4 v6, 0x2

    const-string v7, "HapticFeedbackType.mediumImpact"

    invoke-direct {v3, v5, v6, v7}, Lr0/j$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lr0/j$g;->h:Lr0/j$g;

    new-instance v5, Lr0/j$g;

    const-string v7, "HEAVY_IMPACT"

    const/4 v8, 0x3

    const-string v9, "HapticFeedbackType.heavyImpact"

    invoke-direct {v5, v7, v8, v9}, Lr0/j$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lr0/j$g;->i:Lr0/j$g;

    new-instance v7, Lr0/j$g;

    const-string v9, "SELECTION_CLICK"

    const/4 v10, 0x4

    const-string v11, "HapticFeedbackType.selectionClick"

    invoke-direct {v7, v9, v10, v11}, Lr0/j$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lr0/j$g;->j:Lr0/j$g;

    const/4 v9, 0x5

    new-array v9, v9, [Lr0/j$g;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lr0/j$g;->k:[Lr0/j$g;

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

    iput-object p3, p0, Lr0/j$g;->e:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lr0/j$g;
    .registers 6

    invoke-static {}, Lr0/j$g;->values()[Lr0/j$g;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    iget-object v4, v3, Lr0/j$g;->e:Ljava/lang/String;

    if-nez v4, :cond_10

    if-eqz p0, :cond_18

    :cond_10
    if-eqz v4, :cond_19

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_18
    return-object v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1c
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such HapticFeedbackType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr0/j$g;
    .registers 2

    const-class v0, Lr0/j$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr0/j$g;

    return-object p0
.end method

.method public static values()[Lr0/j$g;
    .registers 1

    sget-object v0, Lr0/j$g;->k:[Lr0/j$g;

    invoke-virtual {v0}, [Lr0/j$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr0/j$g;

    return-object v0
.end method
