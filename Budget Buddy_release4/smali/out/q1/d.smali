.class final Lq1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/z1;


# static fields
.field public static final e:Lq1/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq1/d;

    invoke-direct {v0}, Lq1/d;-><init>()V

    sput-object v0, Lq1/d;->e:Lq1/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Active"

    return-object v0
.end method
