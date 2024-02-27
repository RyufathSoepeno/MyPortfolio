.class public Lf0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/a$b;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lf0/a$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lf0/a$b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/a$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lf0/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lf0/a$b;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lf0/a$b;
    .registers 3

    invoke-static {}, Le0/a;->e()Le0/a;

    move-result-object v0

    invoke-virtual {v0}, Le0/a;->c()Lh0/d;

    move-result-object v0

    invoke-virtual {v0}, Lh0/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lf0/a$b;

    invoke-virtual {v0}, Lh0/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "main"

    invoke-direct {v1, v0, v2}, Lf0/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "DartEntrypoints can only be created once a FlutterEngine is created."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_28

    :cond_12
    check-cast p1, Lf0/a$b;

    iget-object v1, p0, Lf0/a$b;->a:Ljava/lang/String;

    iget-object v2, p1, Lf0/a$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    iget-object v0, p0, Lf0/a$b;->c:Ljava/lang/String;

    iget-object p1, p1, Lf0/a$b;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_28
    :goto_28
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lf0/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lf0/a$b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DartEntrypoint( bundle path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf0/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf0/a$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
