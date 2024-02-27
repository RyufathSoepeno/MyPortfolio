.class public final La1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La1/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, La1/q;

    invoke-direct {v0}, La1/q;-><init>()V

    sput-object v0, La1/q;->a:La1/q;

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

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
