class Istari < Formula                                                                                                                                                                                       
    desc "Summon Your Engineers — Autonomous AI engineering agents orchestrator"                                                
    homepage "https://github.com/rajnishh/istari-releases"                                                                                                                                                     
    license "MIT"
    version "0.0.1"                                                                                                                                                                                            
                                                                                                                                
    on_macos do                             
      if Hardware::CPU.arm?
        url "https://github.com/rajnishh/istari-releases/releases/download/v0.0.1/ist-darwin-arm64.tar.gz"
        sha256 "2014704abd6246cf9f14798becd573950fa8ce2f917ed0c768942dce22c66781"                                                                                                                              
      end                                                                                                                                                                                                      
    end                                                                                                                                                                                                        
                                                                                                                                                                                                               
    def install                                                                                                                 
      bin.install "ist-darwin-arm64" => "ist"
      bin.install_symlink "ist" => "istari"
    end                                                                                                                                                                                                        
   
    def caveats                                                                                                                                                                                                
      <<~EOS                                                                                                                    
        🧙 Istari installed! Summon Your Engineers.

        Quick start:
          ist setup              # First-time wizard
          ist pick PROJ-1234     # Spawn autonomous agent
          ist dashboard start    # Web dashboard                                                                                                                                                               
      EOS
    end                                                                                                                                                                                                        
                                                                                                                                
    test do                                 
      system "#{bin}/ist", "--help"
    end
  end
