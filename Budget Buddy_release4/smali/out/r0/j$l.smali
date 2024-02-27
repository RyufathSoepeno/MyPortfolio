.class public final enum Lr0/j$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr0/j$l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lr0/j$l;

.field public static final enum g:Lr0/j$l;

.field private static final synthetic h:[Lr0/j$l;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lr0/j$l;

    const-string v1, "TOP_OVERLAYS"

    const/4 v2, 0x0

    const-string v3, "SystemUiOverlay.top"

    invoke-direct {v0, v1, v2, v3}, Lr0/j$l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lr0/j$l;->f:Lr0/j$l;

    new-instance v1, Lr0/j$l;

    const-string v3, "BOTTOM_OVERLAYS"

    const/4 v4, 0x1

    const-string v5, "SystemUiOverlay.bottom"

    invoke-direct {v1, v3, v4, v5}, Lr0/j$l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lr0/j$l;->g:Lr0/j$l;

    const/4 v3, 0x2

    new-array v3, v3, [Lr0/j$l;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lr0/j$l;->h:[Lr0/j$l;

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

    iput-object p3, p0, Lr0/j$l;->e:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lr0/j$l;
    .registers 6

    invoke-static {}, Lr0/j$l;->values()[Lr0/j$l;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    iget-object v4, v3, Lr0/j$l;->e:Ljava/lang/String;

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

    const-string v2, "No such SystemUiOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr0/j$l;
    .registers 2

    const-class v0, Lr0/j$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr0/j$l;

    return-object p0
.end method

.method public static values()[Lr0/j$l;
    .registers 1

    sget-object v0, Lr0/j$l;->h:[Lr0/j$l;

    invoke-virtual {v0}, [Lr0/j$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr0/j$l;

    return-object v0
.end method
